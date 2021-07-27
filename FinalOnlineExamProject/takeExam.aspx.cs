using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class takeExam : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlSubjects_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnStart_Click(object sender, EventArgs e)
    {
        // 
        String subid, subname;

        subid = ddlSubjects.SelectedItem.Value;
        subname = ddlSubjects.SelectedItem.Text;
    Examination exam = new Examination(Int32.Parse(Session["sid"].ToString()), Int32.Parse(subid), subname);
        exam.GetQuestions();
        Session.Add("questions", exam);
        Response.Redirect("examPage.aspx");

      

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
