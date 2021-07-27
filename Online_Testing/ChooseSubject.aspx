<%@ Page Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="ChooseSubject.aspx.cs" Inherits="ChooseSubject" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    Choose your subject
    <asp:DropDownList ID="ddlSubj" runat="server" DataSourceID="SqlDataSource1"
        DataTextField="sname" DataValueField="sname" Height="20px" Style="z-index: 100;
        left: 35px; position: relative; top: 4px" Width="150px">
    </asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineTestConnectionString %>"
        SelectCommand="SELECT [sname] FROM [ot_subjects]"></asp:SqlDataSource>
    <asp:Button ID="btnSbj" runat="server" OnClick="btnSbj_Click" Style="left: 124px;
        position: relative; top: 27px" Text="Take Test" />
</asp:Content>

