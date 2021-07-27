using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;
using System.Collections.Generic;

/// <summary>
/// Summary description for Test
/// </summary>
public class Test
{
    public int size = 6;
    public int sid;
    public int qid;
    public List<Question> questions;
    public int cans;
    public DateTime StartTime;
    public int curpos = 0;




    public Test()
    {
        StartTime = DateTime.Now;
    }

    public void GetQuestions()
    {
        SqlConnection con = new SqlConnection(DBConfig.ConString);
        SqlDataAdapter da = new SqlDataAdapter("select question, ans1, ans2, ans3, ans4, cans from ot_questions where sid =1" , con);

        DataSet ds = new DataSet();
        da.Fill(ds, "questions");

        int nquestions = ds.Tables[0].Rows.Count;

        // get any number of Random number
        Random r = new Random();
        int[] positions = new int[size];
        int num;

        for (int pos = 0; pos < size; )
        {
            num = Math.Abs(r.Next(nquestions));
            //check whether num is already in the array
            bool found = false;
            for (int i = 0; i < pos; i++)
            
                if (num == positions[i]) { found = true; break; }
                if (!found)
                {
                    positions[pos] = num;
                    pos++;
                }
            
            }//end of for loop

            //load data from dataset into Question objects

            questions = new List<Question>();
            DataRow dr;
            Question q;

            foreach (int pos in positions)
            {
                dr = ds.Tables[0].Rows[pos];
                q = new Question(dr["question"].ToString(), dr["ans1"].ToString(), dr["ans2"].ToString(), dr["ans3"].ToString(), dr["ans4"].ToString(), dr["cans"].ToString());
                questions.Add(q);

            }

        }
    }


