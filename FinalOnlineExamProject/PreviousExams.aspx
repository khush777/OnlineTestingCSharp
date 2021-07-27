<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PreviousExams.aspx.cs" Inherits="PreviousExams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>
        Examinations History</h2>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
        PageSize="3" BorderColor="Black" CellPadding="3" CellSpacing="2"  
        Width="100%" AllowPaging="True" AutoGenerateColumns="False" 
        DataKeyNames="examid">
        <RowStyle Font-Names="Verdana" Font-Size="10pt" />
        <Columns>
            <asp:BoundField DataField="examid" HeaderText="examid" ReadOnly="True" 
                SortExpression="examid" />
            <asp:BoundField DataField="sid" HeaderText="sid" SortExpression="sid" />
            <asp:BoundField DataField="subid" HeaderText="subid" SortExpression="subid" />
            <asp:BoundField DataField="noq" HeaderText="noq" SortExpression="noq" />
            <asp:BoundField DataField="nocans" HeaderText="nocans" 
                SortExpression="nocans" />
            <asp:BoundField DataField="stdate" HeaderText="stdate" 
                SortExpression="stdate" />
            <asp:BoundField DataField="enddate" HeaderText="enddate" 
                SortExpression="enddate" />
        </Columns>
        <HeaderStyle BackColor="#0000C0" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt"
            ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>"
        
        SelectCommand="SELECT * FROM [oe_exams] WHERE ([sid] = @sid)" 
        onselecting="SqlDataSource1_Selecting">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="sid" Name="sid" SessionField="sid" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

