using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using System.Data.SqlClient;

public partial class Student_ChangePwd : System.Web.UI.Page
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
    protected void btnChangePwd_Click(object sender, EventArgs e)
    {
        //string UserName = Session["UserName"].ToString();  //获得登录界面的账号
        string OldPwd = txtOldPwd.Text;  //获得文本框的旧密码
        string NewPwd = txtNewPwd.Text;  //获得文本框的新密码
        string ReNewPwd = txtReNewPwd.Text;  //文本框再次确认密码

        //打开数据库
        String Connstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
        SqlConnection conn = new SqlConnection(Connstr);
        conn.Open();


        string UserId = Session["UserName"].ToString();  //获得登录界面的账号

        string sql = "select 密码 from 用户登录 where 用户名 = '" + UserId + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);  //执行sql语句
        SqlDataReader reader = cmd.ExecuteReader();  //读取数据
        string OldPwd1 = "";
        while (reader.Read())
        {
            OldPwd1 = reader.GetString(0);  //从文本框获得原密码
        }

        //格式转换-- 原密码是否一致
        int ColdPwd = int.Parse(OldPwd);
        int ColdPwd1 = int.Parse(OldPwd1);

        //格式转换--两次密码是否一致
        int CnewPwd = int.Parse(NewPwd);
        int CrnewPwd = int.Parse(ReNewPwd);

        //原密码错误
        if (ColdPwd != ColdPwd1)
        {
            Response.Write("<script>alert('原密码输入错误')</script>");
            // Response.Redirect(@"ChangePwd.aspx");
        }
        else if (CnewPwd != CrnewPwd)
        {
            Response.Write("<script>alert('再次输入密码不一致')</script>");
        }
        else
        {



            conn.Close();

            //原密码与再次密码输入都正确，进行密码正确修改
            //打开数据库
            String NewConnstr = @"Data Source = DESKTOP-Q0202QV; database = 教务管理系统; uid = sa; pwd = 5290083";
            SqlConnection NewConn = new SqlConnection(NewConnstr);
            NewConn.Open();
            try
            {

                string PwdString = "update 用户登录 set 密码 = '" + NewPwd + "' where 用户名 = '" + UserId + "'";
                SqlCommand PwdCmd = new SqlCommand(PwdString, NewConn); //用户登录表密码已正确修改
                PwdCmd.ExecuteNonQuery();
                Response.Write("<script language=javascript>alert('修改成功！')</script>");
            }
            catch
            {
                Response.Write("<script language=javascript>alert('修改失败！')</script>");
            }


            // Response.Write(OldPwd1);
            NewConn.Close();  //关闭数据库
        }
    }
}