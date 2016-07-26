using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

using System.Data.SqlClient;

public partial class Teacher_StaffQuery : System.Web.UI.Page
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

        string sql1 = "select 室号,名称,教师.工号,姓名,课程名,联系方式,办公电话 from 课程,教师,教研室 where 教研室.工号 = 教师.工号 and 教师.工号 = 课程.教师工号";

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

            for (int i = 0; i < row.Cells.Count; i++)
            {
                if (row.Cells[i].Text == previousRow.Cells[i].Text)
                {
                    row.Cells[i].RowSpan = previousRow.Cells[i].RowSpan < 2 ? 2 :
                                           previousRow.Cells[i].RowSpan + 1;
                    previousRow.Cells[i].Visible = false;
                }
            }
        }
    }
}