﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using System.Data.SqlClient;

public partial class Student_TeacherCourse : System.Web.UI.Page
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

    }

    protected void TeacherCourse_Click(object sender, EventArgs e)
    {
        string UserName = Session["UserName"].ToString();  //获得登录界面的账号

        //打开数据库
        String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn = new SqlConnection(Connstr);
        SqlDataAdapter sda = new SqlDataAdapter();

        string sql = "select 教师.工号,教师.姓名,课程号,课程名,开课时间 from 教师,课程 where 工号 = 教师工号";

        sda.SelectCommand = new SqlCommand(sql, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        gv_ScoreTable.DataSource = ds.Tables[0].DefaultView;
        gv_ScoreTable.DataBind();
        conn.Close();


    }
}