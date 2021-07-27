using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Web.Configuration;

/// <summary>
/// Summary description for DBConfig
/// </summary>
public class DBConfig
{
	public static String ConString
    {
        get
        {
            ConnectionStringSettings constr = WebConfigurationManager.ConnectionStrings["examConnectionString"];
            return constr.ConnectionString;

        }
		
	}
}
