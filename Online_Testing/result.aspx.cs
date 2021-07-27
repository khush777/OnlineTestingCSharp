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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    int r;
    public int addr(int r)
    {
        r++;
        return r;
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["r"] = addr(r);
        Session.Add(r, r);
        r = (string)Session["r"];
        Response.Write(r);


    }
}
