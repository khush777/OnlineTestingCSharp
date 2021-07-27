<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="takeExam.aspx.cs" Inherits="takeExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color:Purple;
            font-family:Copperplate Gothic Bold;
            
        }
        .style2
        {
            font-size:larger;
            color: blue;
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
        
    <h2 class =style2>
        Take Examination</h2>
     <h3>Select Subject :</h3>&nbsp;&nbsp;
    <asp:DropDownList ID="ddlSubjects" runat="server"  CssClass=style5
    DataSourceID="SqlDataSource1" DataTextField="subname"
        DataValueField="subid" Width="163px" 
    onselectedindexchanged="ddlSubjects_SelectedIndexChanged">
    </asp:DropDownList><br />
    <br />
    <asp:Button  CssClass ="style5" ID="btnStart" runat="server" Text="Start Exam" OnClick="btnStart_Click" /><br />
    <p/>
    <b class =style4>Note:</b>
    <ul class =style5>
    <li>Each exam contains 5 question.</li><li>You will get 30 seconds to answer each 
        question. Once the time is up, the current question will get disabled.</li><li>Result is displayed after the last questions is answered.</li><li>CANCEL button can be used to cancel the exam.</li>
        <li>Good Luck! :)</li></ul>
    
    <p>
        &nbsp;</p>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>"
        SelectCommand="SELECT [subid], [subname] FROM [oe_subjects]" 
        onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>

</asp:Content>

