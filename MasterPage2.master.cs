using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        // 로그인
        Response.Redirect(string.Format("~/Login.aspx"));
    }

    protected void NewUser_Click(object sender, EventArgs e)
    {
        // 회원가입
        Response.Redirect(string.Format("~/NewUser.aspx"));
    }
}
