using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class EditUser : System.Web.UI.Page
{
    private string connectionString = @"Data Source=DESKTOP-8RPAOC3;" + "Initial Catalog=weppo;" + "User ID=sa;Password=12341234";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        // 이름, 비밀번호, 상메 수정
        string m_id = User.Identity.Name;
        string m_name = txtName.Text;
        string m_pa = txtPassword.Text;
        string m_repa = txtRetype.Text;
        string m_msg = txtStatusMsg.Text;

        if (m_pa != m_repa)
        {
            Response.Write(@"<script>alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');</script>");
        }

        else if (string.IsNullOrWhiteSpace(txtName.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
        {
            Response.Write(@"<script>alert('빈 칸이 있습니다.');</script>");
        }
        else
        {

            SqlConnection sc = new SqlConnection(connectionString);
            SqlCommand scmd = new SqlCommand("UpdateMembers", sc);
            scmd.CommandType = CommandType.StoredProcedure;

            SqlParameter sql_mid = new SqlParameter("@mem_id", SqlDbType.VarChar, 50);
            sql_mid.Value = m_id;

            SqlParameter sql_mpa = new SqlParameter("@mem_passwd", SqlDbType.VarChar, 50);
            sql_mpa.Value = m_pa;

            SqlParameter sql_mmsg = new SqlParameter("@mem_statusMsg", SqlDbType.VarChar, 80);
            sql_mmsg.Value = m_msg;

            SqlParameter sql_mname = new SqlParameter("@mem_name", SqlDbType.VarChar, 250);
            sql_mname.Value = m_name;

            scmd.Parameters.Add(sql_mid);
            scmd.Parameters.Add(sql_mpa);
            scmd.Parameters.Add(sql_mmsg);
            scmd.Parameters.Add(sql_mname);

            try
            {
                sc.Open();
                scmd.ExecuteNonQuery();
            }
            catch (Exception error)
            {
                // Response.Write(@"<script>alert('에러')</script>");
            }
            finally
            {
                sc.Close();
                // Response.Write(@"<script language='javascript'>alert('회원 수정 완료')</script>");
            }
            
            Response.Redirect("Home.aspx");
        }
    }
}