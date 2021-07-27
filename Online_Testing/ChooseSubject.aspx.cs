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

public partial class ChooseSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    

    public int SubjectID(String sbj)
    {
        int sid;
        if (sbj.Equals("SOFTWARE TESTING"))
        { sid = 1; }
        else if (sbj.Equals("UML"))
        { sid = 2; }
        else if (sbj.Equals("XML"))
        { sid = 3; }
        else { sid = 0; }
        return sid;
    }

    
    
    protected void btnSbj_Click(object sender, EventArgs e)
    {
        string sbj = ddlSubj.Text;
        int sid = SubjectID(sbj);   
         
       
        Response.Write("Subject ID = " + sid);


    }
}
