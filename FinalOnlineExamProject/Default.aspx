<%@ Page Language="C#" MasterPageFile="~/Main.master" Title="Untitled Page"  %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = "Welcome To " + Session["fullsname"];
        lblDate.Text = "Lasted Visited At : " + Session["dlv"];
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Names="Verdana"></asp:Label><br />
    <br />
    <asp:Label ID="lblDate" runat="server" Font-Bold="True" Font-Names="Verdana"></asp:Label>
</asp:Content>

