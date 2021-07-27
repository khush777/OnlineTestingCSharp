<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="examPage.aspx.cs" Inherits="examPage"  %>

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
    <title>Examination</title>
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
        .style4
        {
            font-size: medium;
            color:Navy;
            font-weight: bold;
            font-family:Arial;
        }
        .style5
        {
           font-family:Arial;
            font-size: medium;
            font-weight: bold;
        }
        .style6
        {
            font-size: medium;
            color: Navy;
            font-weight: bold;
            font-family: Arial;
            width: 434px;
        }
        .style7
        {
            width: 434px;
        }
        </style>
    </head>
<body>
<div>
    <form id="form1" runat="server">
    <h2 class = "style1">Examination </h2>
        <table bgcolor="#f8e1ff" style="width: 861px; height: 203px;" >
    <tr>
    <td class =style6>
        Subject :
        <asp:Label ID="lblSubject" runat="server" Width="154px" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label></td>
    <td class =style4>
        Question  :
        <asp:Label ID="lblQno" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label></td>
    </tr>
    <tr>
    <td class =style6>
        Started At :
        <asp:Label ID="lblStime" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red"></asp:Label></td>
    <td style="height: 22px" class =style4>
        Current Time : <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer runat="server" id="UpdateTimer" interval="1000" 
            ontick="UpdateTimer_Tick" EnableViewState="False" />
        <asp:UpdatePanel runat="server" id="TimedPanel" updatemode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger controlid="UpdateTimer" eventname="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" id="DateStampLabel" ForeColor="Red" />
            </ContentTemplate>
        </asp:UpdatePanel>
                
    
        </td>
    </tr>
    <tr>
    <td class="style7">
    <asp:Timer ID="Timer1" runat="server" Interval ="1000" OnTick="timer1_tick" 
        EnableViewState="False">
        </asp:Timer>
        <span style = "font-size:large"></span>
        
    <div>
   <asp:UpdatePanel ID ="updPn1" runat ="server" UpdateMode="Conditional">
    <ContentTemplate>
        <asp:Label ID="lblTimer" runat="server" CssClass ="style6"></asp:Label></ContentTemplate>
    <Triggers>
    <asp:AsyncPostBackTrigger ControlID ="timer1" EventName ="tick" />
    </Triggers>
    </asp:UpdatePanel>
    </div>
    </td>
    </tr>
    </table>
    
    
 
    
    <p />
    <b class =style2>Question</b> <b><pre runat=server id="question" visible ="false" style=" background-color:Transparent; height: 23px; width: 696px;" 
            class =style5 >question</pre> 
 
    <p>
        <asp:Label ID="lblQuestion" runat="server" CssClass ="style5"></asp:Label>
        
        </p>
    <p>
        &nbsp;</p>
    </b>
 
        <asp:Panel ID="Panel2" runat="server" Height="248px" ScrollBars="Vertical" 
        Width="894px" Wrap="true" CssClass ="style5">
      
     <asp:UpdatePanel runat="server" id="UpdatePanel1" updatemode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger controlid="UpdateTimer" eventname="Tick" />
            </Triggers>
            <ContentTemplate>
    <table class = style5>
    <tr>
    <td >
    <asp:RadioButton ID="rbAns1" runat="server" GroupName="answer" 
            AutoPostBack ="True" />
    </td>
    <td style="width: 3px">
    <pre runat=server id="ans1"></pre>
    </td>
    </tr>
    
    <tr>
    <td >
    <asp:RadioButton ID="rbAns2" runat="server" GroupName="answer" 
            AutoPostBack="True"  />
    </td>
    <td style="width: 3px">
    <pre runat=server id="ans2"></pre>
    </td>
    </tr>
    
    <tr>
    <td >
    <asp:RadioButton ID="rbAns3" runat="server" GroupName="answer" 
            AutoPostBack="True" />
    </td>
    <td style="width: 3px">
    <pre runat=server id="ans3"></pre>
    </td>
    </tr>
    
    <tr>
    <td>
    <asp:RadioButton ID="rbAns4" runat="server" GroupName="answer" 
            AutoPostBack="True"  />
    </td>
    <td style="width: 3px">
    <pre runat=server id="ans4"></pre>
    </td>
    </tr>
    
    </table>
    
   
        </ContentTemplate>
        </asp:UpdatePanel>
        <br />
      
              </asp:Panel>
          <asp:Button ID="btnPrev" runat="server" Text="Previous" 
        OnClick="btnPrev_Click" Visible="False" />&nbsp;<asp:Button ID="btnNext"
            runat="server" Text="Next" Width="75px" OnClick="btnNext_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel Exam" Width="115px" OnClick="btnCancel_Click" />
         

    </div>
        </form>
</body>
</html>