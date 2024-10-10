using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.IO;


public partial class Login : System.Web.UI.Page
{
    private string connectionString = @"Data Source=DESKTOP-8RPAOC3;" + "Initial Catalog=weppo;" + "User ID=sa;Password=12341234";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        // DB이름 수정
        SqlConnection sc = new SqlConnection(connectionString);
        SqlCommand cmd = cmd = new SqlCommand();


        string u_id = txtUserName.Text;
        string u_pa = txtPa.Text;

        cmd.Connection = sc;

        cmd.CommandText = "SELECT * FROM member WHERE mem_id='" + u_id + "' AND mem_passwd='" + u_pa + "'";

        sc.Open();

        SqlDataReader rs = cmd.ExecuteReader();


        if (rs.HasRows == true)
        {
            // Response.Write(@"<script>alert('로그인 성공');</script>");
            // FormsAuthentication.SetAuthCookie(UserID, false);
            FormsAuthentication.RedirectFromLoginPage(u_id, false);
            Response.Redirect("Home.aspx");
        }
        else if ((u_id == "Admin") && (u_pa == "Admin"))
        {
            Response.Write(@"<script>alert('로그인 성공');</script>");
            FormsAuthentication.SetAuthCookie(u_id, false);
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
        {
            Response.Write(@"<script>alert('로그인 정보가 잘못되었거나 없는 유저입니다.');</script>");
            // Response.Redirect(string.Format("NewUser.aspx"));
        }

        sc.Close();
    }
}