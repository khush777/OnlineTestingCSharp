using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


public partial class examPage : System.Web.UI.Page
{


    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            DisplayQuestion();
        if (!ScriptManager1.IsInAsyncPostBack)
            Session["timeout"] = DateTime.Now.AddMinutes(0.5).ToString();
        
            }

    public void hiderb()
    {
        this.rbAns1.Visible= false;
        this.rbAns2.Visible = false;
        this.rbAns3.Visible = false;
        this.rbAns4.Visible = false;
    }
    public void showrb()
    {
        this.rbAns1.Visible = true;
        this.rbAns2.Visible = true;
        this.rbAns3.Visible = true;
        this.rbAns4.Visible = true;
    }

    protected void timer1_tick(object sender, EventArgs e)
    {
        if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
        {
            lblTimer.Text = "Number of seconds left for current question: " + ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalSeconds).ToString();
        }
        else
        {
            hiderb();
            lblTimer.Text = " Time out! Click on the Next Button to go to the next question.";
          

        }
    }

    protected void UpdateTimer_Tick(object sender, EventArgs e)
    {
        DateStampLabel.Text = DateTime.Now.ToString();
    }

    public void DisplayQuestion()
    {
        // get data from session object
        Examination e = new Examination();
        e = (Examination)Session["questions"];
        // display data
        lblSubject.Text = e.subname;
        lblQno.Text = e.curpos + 1 + "/" + e.SIZE;
     
     

        lblStime.Text = e.StartTime.ToString();

        Question q = e.questions[e.curpos];
        // display details of question
        lblQuestion.Text = q.question;
        question.InnerHtml = q.question;
        ans1.InnerHtml = q.ans1;
        ans2.InnerHtml = q.ans2;
        ans3.InnerHtml = q.ans3;
        ans4.InnerHtml = q.ans4;

        // reset all radio buttons
        rbAns1.Checked = false;
        rbAns2.Checked = false;
        rbAns3.Checked = false;
        rbAns4.Checked = false;

        // disable and enable buttons
        if (e.curpos == 0)
            btnPrev.Enabled = false;
        else
            btnPrev.Enabled = true;

        if (e.curpos == e.SIZE - 1)
            btnNext.Text = "Finish";
        else
            btnNext.Text = "Next";
    }

    public void ProcessQuestion()
    {
        Examination exam = (Examination)Session["questions"];
        Question q = exam.questions[exam.curpos];
        String answer;
        // find out the answer and assign it to 
        if (rbAns1.Checked)
            answer = "1";
        else
            if (rbAns2.Checked)
                answer = "2";
            else
                if (rbAns3.Checked)
                    answer = "3";
                else
                    if (rbAns4.Checked)
                        answer = "4";
                    else
                        answer = "0";  // error
        q.answer = answer;
        exam.questions[exam.curpos] = q;
        Session.Add("questions", exam);
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        showrb();
            ProcessQuestion();
            Examination exam = (Examination)Session["questions"];
        
            if (exam.curpos == exam.SIZE - 1)
                Response.Redirect("Result.aspx");
            else
            {
                exam.curpos++;
                Session.Add("questions", exam);
                DisplayQuestion();
            }
                 
           
    }

    protected void btnPrev_Click(object sender, EventArgs e)
    {
        
            // ProcessQuestion();
            Examination exam = (Examination)Session["questions"];
            exam.curpos--;
            Session.Add("questions", exam);
            
            DisplayQuestion();

   
       
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        // Examination exam = (Examination)Session["questions"];
        Session.Remove("questions");
        //exam = null;
        Response.Redirect("Default.aspx");
    }


    
}
