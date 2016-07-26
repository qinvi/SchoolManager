using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using System.Data.SqlClient;

public partial class Teacher_StuChoose : System.Web.UI.Page
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

        string sql1 = "select 姓名,课程.课程号,课程名,开课时间,室号,学分 from 选课,课程,学生,教室 where 课程.教师工号 = '"+UserName+"' and 教室.课程号 = 课程.课程号 and 学生.学号 = 选课.学号 and 课程.课程号 = 选课.课程号";

        sda.SelectCommand = new SqlCommand(sql1, conn1);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        gv_ScoreTable.DataSource = ds.Tables[0].DefaultView;
        gv_ScoreTable.DataBind();
        conn.Close();
    }
}