using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;



public partial class MainExam : System.Web.UI.Page
{

    public static String ConString
    {
        get
        {
            ConnectionStringSettings constr = WebConfigurationManager.ConnectionStrings["OnlineTestConnectionString"];
            return constr.ConnectionString;

        }

    }
    int r = 0;
        
    public void DisplayQuestion(int row)
    {
        SqlConnection con = new SqlConnection(DBConfig.ConString);
        SqlDataAdapter da = new SqlDataAdapter("select * from ot_questions where sid = 1", con);

        DataSet ds = new DataSet();
        da.Fill(ds);
        Test t = new Test();
        int noq = ds.Tables[0].Rows.Count;
        DataRow dr;
        dr = ds.Tables[0].Rows[row];
       
        lblQuestion.Text = dr["question"].ToString();
        rbans1.Text = dr["ans1"].ToString();
        rbans2.Text = dr["ans2"].ToString();
        rbans3.Text = dr["ans3"].ToString();
        rbans4.Text = dr["ans4"].ToString();

        rbans1.Checked = false;
        rbans2.Checked = false;
        rbans3.Checked = false;
        rbans4.Checked = false;

        

    }
         

    protected void Page_Load(object sender, EventArgs e)
    {
        DisplayQuestion(r);
    }


    protected void btnNext_Click(object sender, EventArgs e)
    {
        r++;
        DisplayQuestion(r);
        Response.Write(r);

    }
    protected void btnPrev_Click(object sender, EventArgs e)
    {
        if (r < 0)
            btnPrev.Enabled = false;
        else
        --r;
        Response.Write(r);
        DisplayQuestion(r);
    }


    public void ProcessQuestion()
    {
        String answer;

        if (rbans1.Checked)
            answer = "1";
        else
            if (rbans2.Checked)
                answer = "2";
            else
                if (rbans3.Checked)
                    answer = "3";
                else
                    if (rbans4.Checked)
                        answer = "4";
                    else
                        answer = "0";
        
        
    }


    
}
