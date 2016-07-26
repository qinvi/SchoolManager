using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    //登录
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        //学生视图
        if (btnStudent.Checked)
        {
            //UserName.Text, Password.Text
            string UserId = UserName.Text; //从文本框获用户账号
            string Pwd = Password.Text;  //从文本框获得用户密码

            //打开数据库
            String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            //sql语句
            string sql = "select * from 用户登录 where 用户名 ='" + UserId + "' and 密码='" + Pwd + "' and 权限 = 1";

            //数据库打开并连接
            SqlCommand cmd = new SqlCommand(sql, conn);

            //是否存在该用户
            int strCount = Convert.ToInt32(cmd.ExecuteScalar());

            if (strCount > 0)
            {
                Session["UserName"] = this.UserName.Text; //保存账号到session

                Response.Redirect(@"Student/Student.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户信息验证错误');</script>");
            }

            //关闭数据库
            conn.Close();

        }

        //教师视图
        if (btnTeacher.Checked)
        {
            //UserName.Text, Password.Text
            string UserId = UserName.Text; //从文本框获用户账号
            string Pwd = Password.Text;  //从文本框获得用户密码

            //打开数据库
            String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            //sql语句
            string sql = "select * from 用户登录 where 用户名 ='" + UserId + "' and 密码='" + Pwd + "' and 权限 = 2";

            //数据库打开并连接
            SqlCommand cmd = new SqlCommand(sql, conn);

            //是否存在该用户
            int strCount = Convert.ToInt32(cmd.ExecuteScalar());

            if (strCount > 0)
            {
                Session["UserName"] = this.UserName.Text; //保存账号到session
                Response.Redirect(@"Teacher/Teacher.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户信息验证错误');</script>");
            }

            //关闭数据库
            conn.Close();

        }

        //部门视图
        if (btnDept.Checked)
        {
            //UserName.Text, Password.Text
            string UserId = UserName.Text; //从文本框获用户账号
            string Pwd = Password.Text;  //从文本框获得用户密码

            //打开数据库
            String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            //sql语句
            string sql = "select * from 用户登录 where 用户名 ='" + UserId + "' and 密码='" + Pwd + "' and 权限 = 3";

            //数据库打开并连接
            SqlCommand cmd = new SqlCommand(sql, conn);

            //是否存在该用户
            int strCount = Convert.ToInt32(cmd.ExecuteScalar());

            if (strCount > 0)
            {
                Session["UserName"] = this.UserName.Text; //保存账号到session
                Response.Redirect(@"Dept/Dept.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户信息验证错误');</script>");
            }

            //关闭数据库
            conn.Close();

        }

        //游客任意账号和密码都可以登录
        if (btnGuest.Checked)
        {
            Response.Redirect("http://jwgl.gdut.edu.cn/fk_main.html#");
        }





    }

    //关闭
    protected void btnClose_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close();history.go(-1)</script>");
    }

}
