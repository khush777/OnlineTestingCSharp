<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="MainExam.aspx.cs" Inherits="MainExam" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <table border="2" cellpadding="2" cellspacing="2" style="border-right: black thin solid;
        border-top: black thin solid; left: 34px; vertical-align: middle; border-left: black thin solid;
        width: 483px; line-height: normal; border-bottom: black thin solid; letter-spacing: normal;
        position: relative; top: 28px; height: 224px; background-color: white; text-align: justify">
        <caption>
            Online Test
        </caption>
        <tr>
            <td align="center" style="width: 100px; background-color: white; height: 105px;" valign="middle">
                <asp:Label ID="lblQuestion" runat="server" Height="65px" Width="459px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" style="width: 100px; background-color: white; text-align: justify;" valign="middle">
                <asp:RadioButton ID="rbans1" runat="server" style="left: 17px; position: relative; top: 43px" GroupName="options"  /></td>
        </tr>
        <tr>
            <td align="center" style="width: 100px; background-color: white; height: 184px; text-align: justify;" valign="middle">
                <asp:RadioButton ID="rbans2" runat="server" style="left: 17px; position: relative; top: -31px" GroupName="options" /></td>
        </tr>
        <tr>
            <td align="center" style="width: 100px; background-color: white; text-align: justify; height: 13px;" valign="middle">
                <asp:RadioButton ID="rbans3" runat="server" style="left: 17px; position: relative; top: -104px" GroupName="options" /></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 44px; background-color: white" valign="middle">
                <asp:RadioButton ID="rbans4" runat="server" style="left: 18px; position: relative; top: -108px" GroupName="options" /></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="btnPrev" runat="server" Style="left: 135px; position: relative; top: -51px"
        Text="Previous" OnClick="btnPrev_Click" />
    <asp:Button ID="btnNext" runat="server" Style="left: 214px; position: relative; top: -50px"
        Text="Next" Width="73px" OnClick="btnNext_Click" /><br />
    <br />
    <asp:Button ID="Button3" runat="server" Style="left: 397px; position: relative; top: 11px"
        Text="Button" /><br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

