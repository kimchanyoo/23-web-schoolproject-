using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage_A : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Home_Click(object sender, EventArgs e)
    {
        // 홈
        Response.Redirect(string.Format("~/Admin/Home.aspx"));
    }

    protected void Board_Click(object sender, EventArgs e)
    {
        // 게시판 전체보기
        Response.Redirect(string.Format("~/Admin/List_Board_A.aspx"));
    }

    protected void User_Click(object sender, EventArgs e)
    {
        // 회원 전체보기
        Response.Redirect(string.Format("~/Admin/List_User_A.aspx"));
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        // 로그아웃
        FormsAuthentication.SignOut();
        Response.Redirect(string.Format("~/Login.aspx"));
    }
}
