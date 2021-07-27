<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

 

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">
        .style1
        {
            font-size: xx-large;
            color:navy;
            font-family:Copperplate Gothic Bold;
            
        }
        .style3
        {
        font-size: medium;
        color: Green;
        font-weight: bold;
        font-family: Arial;
        width: 263px;
    }
        .style5
        {
            font-size: medium;
            font-weight: bold;
        }
        .style6
    {
        width: 254px;
    }
        </style>
        
  <br />
    <h2 class =style1> Examination Result</h2>
    &nbsp;
    <br />
    <table class =style5 bgcolor="white" border=1>
        <tr>
            <td class = style3>
                Subject:
            </td>
            <td class="style6">
                <asp:Label ID="lblSubject" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td class =style3>
                Starting Time :
            </td>
            <td class="style6">
                <asp:Label ID="lblStime" runat="server" Text="Label"></asp:Label></td>
        </tr>
        
        <tr>
            <td class =style3>
                Total Exam Time : 
            </td>
            <td class="style6">
                2 mintutes 30 seconds</td>
        </tr>
        
                <tr>
            <td class =style3>
               No. of Questions :
            </td>
            <td class="style6">
                <asp:Label ID="lblNquestions" runat="server"></asp:Label></td>
        </tr>
        
                <tr>
            <td class =style3>
                No. of correct answers :
            </td>
            <td class="style6">
                <asp:Label ID="lblNcans" runat="server" Text="Label"></asp:Label></td>
        </tr>

        <tr>
            <td class =style3>
                Grade : 
            </td>
            <td class="style6">
                <asp:Label ID="lblGrade" runat="server" Text="Label"></asp:Label></td>
        </tr>

    </table>
    <br />

    </asp:Content>

