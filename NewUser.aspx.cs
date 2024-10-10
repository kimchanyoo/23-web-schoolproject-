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

public partial class NewUser : System.Web.UI.Page
{
    private string connectionString = @"Data Source=DESKTOP-8RPAOC3;" + "Initial Catalog=weppo;" + "User ID=sa;Password=12341234";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        string m_name = txtName.Text;
        string m_id = txtID.Text;
        string m_pa = txtPassword.Text;
        string m_repa = txtRetype.Text;


        if (m_pa != m_repa)
        {
            Response.Write(@"<script>alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');</script>");
        }

        else if (string.IsNullOrWhiteSpace(txtName.Text) || string.IsNullOrWhiteSpace(txtID.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
        {
            Response.Write(@"<script>alert('빈 칸이 있습니다.');</script>");
        }
        else
        {
            // SELECT name, productid FROM saleslt.product WHERE productcategoryid = 7
            SqlConnection sc = new SqlConnection(connectionString);
            SqlCommand scmd = new SqlCommand("InsertMembers", sc);

            scmd.CommandType = CommandType.StoredProcedure;
            
            SqlParameter sql_mname = new SqlParameter("@mem_name", SqlDbType.VarChar, 250);  // sql_mname = mem_name
            sql_mname.Value = m_name;

            SqlParameter sql_mid = new SqlParameter("@mem_id", SqlDbType.VarChar, 50);       // sql_mid = mem_id
            sql_mid.Value = m_id;

            SqlParameter sql_mpa = new SqlParameter("@mem_passwd", SqlDbType.VarChar, 50);   // sql_mpa = mem_passwd
            sql_mpa.Value = m_pa;

            scmd.Parameters.Add(sql_mname);
            scmd.Parameters.Add(sql_mid);
            scmd.Parameters.Add(sql_mpa);

            try
            {
                sc.Open();
                scmd.ExecuteNonQuery();
            }
            catch(Exception error)
            {
                Response.Write(@"<script>alert('에러');</script>");
            }
            finally
            {
                sc.Close();
            }
            
            Response.Write(txtName.Text + "님 환영합니다.");

            sc.Dispose();
            scmd.Dispose();
            Response.Write(@"<script>alert('회원가입 완료');</script>");
            Response.Redirect("Login.aspx");
        }
    }

}