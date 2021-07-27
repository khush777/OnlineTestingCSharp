using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;

public class Examination
{
    public int SIZE = 5;
    public int sid;
    public int subid;
    public String subname;
    public int ncans;
    public List<Question> questions;
    public DateTime StartTime;
    public int curpos = 0;

    public Examination(int sid, int subid, String subname)
    {
        this.sid = sid;
        this.subid = subid;
        this.subname = subname;
        StartTime = DateTime.Now;
    }

    public Examination()
    {
        this.sid = sid;
        this.subid = subid;
        this.subname = subname;
        StartTime = DateTime.Now;
    }

    public void GetQuestions()
    {
        // get questions from OE_QUESTIONS table
        SqlConnection con = new SqlConnection(DBConfig.ConString );
        SqlDataAdapter da = new SqlDataAdapter("select question,ans1,ans2,ans3,ans4,cans from oe_questions where subid = " + subid,con);
        DataSet ds = new DataSet();
        da.Fill(ds, "questions");
        int nquestions = ds.Tables[0].Rows.Count; 

        // get N no. of random number
        Random r = new Random();
        int[] positions = new int[SIZE];
        int num;
        for (int pos = 0; pos < SIZE; )
        {
            num = Math.Abs(r.Next(nquestions));
            // check whether the number is already in the array
            bool found = false;
            for( int i = 0; i < pos ; i ++)
                if (num == positions[i]) { found = true; break; }

            if (!found)
            {   positions[pos] = num;
                pos++;
            }
        } // end of for

        // load data from DataSet into Question Objects
        questions = new List<Question>();
        DataRow dr;
        Question q;
        foreach (int pos in positions)
        {
            dr = ds.Tables[0].Rows[pos];
            q = new Question(dr["question"].ToString(), dr["ans1"].ToString(), dr["ans2"].ToString(), dr["ans3"].ToString(), dr["ans4"].ToString(), dr["cans"].ToString());
            questions.Add(q);
        }

    } // end of GetQuestions()
} // end of Class
