<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // check whether credentials are valid
        SqlConnection con = new SqlConnection(DBConfig.ConString );
        try
        {
            con.Open(); 
            SqlCommand cmd = new SqlCommand("select * from oe_Students where uname = @uname and pwd = @pwd",con);
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 10).Value = txtLname.Text.Trim();
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 10).Value = txtPwd.Text.Trim();
     
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("sid", dr["sid"]);
                Session.Add("fullsname", dr["fullsname"]);
                Session.Add("dlv", dr["dlv"]);
                // update MEMBERS table for DLV
                dr.Close();
                cmd.CommandText = "update oe_Students set dlv = getdate() where uname = @uname";
                cmd.ExecuteNonQuery();
                Response.Redirect("default.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Login!";
                dr.Close();
            }

        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error --> " + ex.Message;
        }
        finally
        {
            con.Close();
        }
       
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>NIIT - Login</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color:Purple;
            font-family:Copperplate Gothic Bold;
            
        }
        .style2
        {
            font-size: medium;
            color: blue;
            font-family:Arial Black;
        }
        .style3
        {
            font-size: medium;
            color:Green;
            font-weight:bold;
            font-family:Arial Black;
        }
        .style4
        {
            font-size: medium;
            color:Navy;
            font-weight: bold;
            font-family:Arial;
        }
        .style5
        {
            font-size: medium;
            font-weight: bold;
        }
        </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
        <h1 class="style1">
            NIIT</h1>
        <br />
        <h3 class="style2">
            Welcome To Examination System</h3>
        <br />
        <h4 class="style3">Login</h4>
        <br />
        <table  bgcolor= "#eeeeee">
            <tr>
                <td><span class="style4">Login Name</span> :</td>
                <td><asp:TextBox ID="txtLname" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLname" ErrorMessage="Llogin name is missing!" Font-Bold="True">*</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td class="style4">Password :</td>
                <td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="Password is missing!" Font-Bold="True">*</asp:RequiredFieldValidator></td>
            </tr>
           <tr>
          <td colspan="2">
              &nbsp;</td> 
           </tr> 
        </table>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" Width="116px" 
            OnClick="btnLogin_Click" 
            style="color: #0000FF; font-size: medium; font-weight: 700" /><br />
        <br />
        <asp:Label ID="lblMsg" runat="server" 
            style="color: #008000; font-size: medium; font-weight: 700"></asp:Label>
        <p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Please correct the following errors:" Font-Bold="True" />
        <p/> 
        <a href="newUser.aspx"><span class="style5">New User?</span></a><br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="dsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>"
            SelectCommand="SELECT [uname], [pwd] FROM [oe_Students]">
        </asp:SqlDataSource>
   
    </div>
    </form>
</center>    
</body>
</html>
