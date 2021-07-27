<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="newUser.aspx.cs" Inherits="newUser" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>NIIT - New User Registeration</title>
</head>
<style type="text/css">
        .style1
        {
            font-size: x-large;
            color:Navy;
            font-weight: bold;
            font-family:Copperplate Gothic Bold;
        }
        .style5
        {
            font-size: medium;
            font-weight: bold;
            
          
        }
     
        </style>

<body>

    <form id="form1" runat="server">

<h2 class =style1>
    New User Registration
    </h2>
    <table class =style5>
        <tr>
            <td class="style6">
                Login name :</td>
            <td class="style7" >
                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLname"
                    ErrorMessage="Login Name Required!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style6" >
                Password :
            </td>
            <td class="style7" >
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd"
                    ErrorMessage="Password is required!"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="style6" >
                Confirm Password :</td>
            <td class="style7" >
                <asp:TextBox ID="txtCpwd" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCpwd"
                    ErrorMessage="Confirm password required!"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd"
                    ControlToValidate="txtCpwd" ErrorMessage="Passwords do not match!"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td class="style6" >
                Fullname :</td>
            <td class="style7" >
                <asp:TextBox ID="txtFname" runat="server" Width="243px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFname"
                    ErrorMessage="Fullname is required!"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtFname" 
                    ErrorMessage="You cannot enter numbers in this feild! Maximum 50 characters!" 
                    ValidationExpression="[a-zA-Z\.\'\-_\s]{1,50}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style6" >
                Email Address :</td>
            <td class="style7" >
                <asp:TextBox ID="txtEmail" runat="server" Width="240px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Email address is required!"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Incorrect Email Address!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button  CssClass ="style5" ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnCancel"  CssClass = "style5" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" /><br />
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label><br />

    </form>

</body>
</html>


