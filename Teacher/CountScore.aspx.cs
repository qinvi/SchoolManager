using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using System.Data.SqlClient;

public partial class CountScore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string UserName = Session["UserName"].ToString();  //获得登录界面的账号

        //打开数据库
        String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn = new SqlConnection(Connstr);
        conn.Open();

        //string UserName = Session["UserName"].ToString();  //获得登录界面的账号
        string sql = "select 姓名 from 教师 where 工号 = '" + UserName + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader UserName1 = cmd.ExecuteReader();
        string haha = "";
        while (UserName1.Read())
        {
            haha = UserName1.GetString(0);
        }
        haha = haha + "教师";
        formView.DataSource = new[]
            {
                new {

                    UserName = haha/*UserName1[0].ToString()*/,

                }
            };
        formView.DataBind();
        conn.Close();

        //打开数据库
        String Connstr1 = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn1 = new SqlConnection(Connstr1);
        SqlDataAdapter sda = new SqlDataAdapter();

        string UserName2 = Session["UserName"].ToString();  //获得登录界面的账号

        string sql1 = "select 课程.课程号,课程名,姓名,成绩,学分,开课时间,室号 from 课程,学生,成绩,教室 where 课程.教师工号 = '" + UserName + "' and 课程.课程号 = 成绩.课程号 and 成绩.学号 = 学生.学号 and 教室.课程号 = 课程.课程号 order by 成绩 desc";

        sda.SelectCommand = new SqlCommand(sql1, conn1);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        gv_ScoreTable.DataSource = ds.Tables[0].DefaultView;
        gv_ScoreTable.DataBind();
        conn.Close();

        //gv_ScoreTable
        MergeRows(gv_ScoreTable);
    }

    //合并具有相同列值的行
    public static void MergeRows(GridView gridView)

    {

        for (int rowIndex = gridView.Rows.Count - 2; rowIndex >= 0; rowIndex--)

        {

            GridViewRow row = gridView.Rows[rowIndex];

            GridViewRow previousRow = gridView.Rows[rowIndex + 1];

            if(row.Cells[0].Text == previousRow.Cells[0].Text)
            {
                row.Cells[0].RowSpan = previousRow.Cells[0].RowSpan < 2 ? 2 : previousRow.Cells[0].RowSpan + 1;
                previousRow.Cells[0].Visible = false;
            }
            if (row.Cells[1].Text == previousRow.Cells[1].Text)
            {
                row.Cells[1].RowSpan = previousRow.Cells[1].RowSpan < 2 ? 2 : previousRow.Cells[1].RowSpan + 1;
                previousRow.Cells[1].Visible = false;
            }
        }
    }
}