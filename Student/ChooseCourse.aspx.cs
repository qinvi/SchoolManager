﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

using System.Data.SqlClient;

public partial class Student_ChooseCourse : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //打开数据库
        String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn = new SqlConnection(Connstr);
        conn.Open();

        string UserName = Session["UserName"].ToString();  //获得登录界面的账号
        string sql = "select 姓名 from 学生 where 学号 = '" + UserName + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader UserName1 = cmd.ExecuteReader();
        string haha = "";
        while (UserName1.Read())
        {
            haha = UserName1.GetString(0);
        }
        haha = haha + "同学";
        formView.DataSource = new[]
            {
                new {

                    UserName = haha/*UserName1[0].ToString()*/,

                }
            };
        formView.DataBind();
        conn.Close();


        //string UserName = Session["UserName"].ToString();  //获得登录界面的账号

        //可选课程
        //打开数据库
        String Connstr1 = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn1 = new SqlConnection(Connstr1);
        SqlDataAdapter sda = new SqlDataAdapter();

        //string sql1 = "select 课程号,课程名 from 课程 where not exists (select 课程号 from 选课 where 学号 = '"+UserName+"' and 课程号 = 课程.课程号)";
        string sql1= "select 课程.课程号,课程名,姓名,开课时间,室号,学分 from 课程,教师,教室 where 教室.课程号 = 课程.课程号 and 教师工号 = 教师.工号 and 课程.课程号 in (select 课程号 from 课程 where not exists (select * from 选课 where 选课.学号 = '" + UserName+"' and 课程号 = 课程.课程号))";
        sda.SelectCommand = new SqlCommand(sql1, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        gv_ChooseClassTb.DataSource = ds.Tables[0].DefaultView;
        gv_ChooseClassTb.DataBind();
        conn.Close();

        //已选课程
        String Connstr2 = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn2 = new SqlConnection(Connstr2);
        SqlDataAdapter sda2 = new SqlDataAdapter();
     
        string sql2 = "select 课程.课程号,课程名,姓名,开课时间,室号,学分 from 课程,教师,教室,选课 where 选课.学号 = '" + UserName + "' and 选课.课程号 = 课程.课程号 and 教师.工号 = 课程.教师工号 and 课程.课程号 = 教室.课程号";
        sda.SelectCommand = new SqlCommand(sql2, conn2);
        DataSet ds2 = new DataSet();
        sda.Fill(ds2);

        gv_SelectedClassTb.DataSource = ds2.Tables[0].DefaultView;
        gv_SelectedClassTb.DataBind();
        conn.Close();

    }

    protected void SelectCourse_Click(object sender, EventArgs e)
    {
        string UserName = Session["UserName"].ToString();  //获得登录界面的账号
        //((Button)sender).Text = "已 添 加";
        int row = ((GridViewRow)((Button)sender).NamingContainer).RowIndex;  //获得点击的行号
        //Button button1 = gv_ChooseClassTb.Rows[row].FindControl("btnSelectCourse") as Button;
        //button1.Text = "已添加";

        //获得选中的课程号
        string CourseId = this.gv_ChooseClassTb.Rows[row].Cells[0].Text.ToString();


        //打开数据库
        String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn = new SqlConnection(Connstr);
        conn.Open();

        string SelectCourseString = "insert into 选课 values('"+UserName+"','"+CourseId+ "','2','2016','第16周周1(2016-06-13)第6,7节','教107','闭卷','32')";
        SqlCommand SeCoCmd = new SqlCommand(SelectCourseString, conn); //用户登录表密码已正确修改
        SeCoCmd.ExecuteNonQuery();

        Response.Redirect(@"ChooseCourse.aspx");
        conn.Close();
    }
}