using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // show exam result
        Examination exam = (Examination)Session["questions"];
        lblSubject.Text = exam.subname;
        lblStime.Text = exam.StartTime.ToString();
        TimeSpan ts = DateTime.Now.Subtract(exam.StartTime);
        //lblMin.Text = ts.Minutes.ToString();
        lblNquestions.Text = exam.SIZE.ToString();

        // find how many correct answers
        int cnt = 0;
        foreach (Question q in exam.questions)
        {
            if (q.IsCorrect())
                cnt++;
        }

        lblNcans.Text = cnt.ToString();
        exam.ncans = cnt;
        Session.Add("questions", exam);

        if (cnt > 3)
            lblGrade.Text = "Excellent";
        else
            if (cnt > 1)
                lblGrade.Text = "Average";
            else
                lblGrade.Text = "Poor";
        // add row to OE_EXAMS table


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["examConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select isnull( max(examid),0) + 1 from oe_exams", con);
        int examid = (Int32)cmd.ExecuteScalar();
        cmd.CommandText = "insert into oe_exams values(@examid,@sid,@subid,@noq,@ncans,@stdate,getdate())";
        cmd.Parameters.Add("@examid", SqlDbType.Int).Value = examid;
        cmd.Parameters.Add("@sid", SqlDbType.Int).Value = exam.sid;
        cmd.Parameters.Add("@subid", SqlDbType.Int).Value = exam.subid;
        cmd.Parameters.Add("@noq", SqlDbType.Int).Value = exam.SIZE;
        cmd.Parameters.Add("@ncans", SqlDbType.Int).Value = exam.ncans;
        cmd.Parameters.Add("@stdate", SqlDbType.DateTime).Value = exam.StartTime;
        cmd.ExecuteNonQuery();
        con.Close();

    }

    protected void lbRank_Click(object sender, EventArgs e)
    {

        Examination exam = (Examination)Session["questions"];
        double per = (double)exam.ncans / exam.SIZE;
        SqlConnection con = new SqlConnection(DBConfig.ConString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from oe_exams where nocans * 1.0 / noq >= @per and  sid = @subid", con);
        cmd.Parameters.Add("@per", SqlDbType.Decimal).Value = per;
        cmd.Parameters.Add("@subid", SqlDbType.Int).Value = exam.subid;
        int rank = (Int32)cmd.ExecuteScalar();

        cmd.CommandText = "select count(*) from oe_exams where sid = @subid";
        int total = (Int32)cmd.ExecuteScalar();

        con.Close();

     // lblRank.Text = "<h4>Your Rank : " + rank.ToString() + " out of " + total.ToString() + " </h4>";

    }
    protected void btntakeExam_Click(object sender, EventArgs e)
    {
        Response.Redirect("takeExam.aspx");
    }
}
