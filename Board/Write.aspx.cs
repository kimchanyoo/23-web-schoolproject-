using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Board_Write : System.Web.UI.Page
{
    protected void btnWrite_Click(object sender, ImageClickEventArgs e)
    {

        string insertString = "INSERT INTO board (b_id, b_passwd, b_title, b_content, ";
        insertString += "ref_id, ref_no, ref_depth,b_read, b_flag, b_regdate) ";
        insertString += "VALUES(@b_id, @b_passwd, @b_title, @b_content, 0, 0, 0, 0, 'N', GETDATE())";

        string updateString = "UPDATE board SET ref_id = b_no WHERE ref_id = 0";

        string hashedPassword =
            FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "sha1");

        DBConn conn = new DBConn();
        SqlCommand cmd = new SqlCommand(insertString, conn.GetConn());
        cmd.Parameters.AddWithValue("@b_id", txtWriter.Text);
        cmd.Parameters.AddWithValue("@b_passwd", hashedPassword);
        cmd.Parameters.AddWithValue("@b_title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@b_content", txtMessage.Text);

        try
        {
            cmd.ExecuteNonQuery();
            conn.ExecuteNonQuery(updateString);
        }
        catch (Exception error)
        {
            Response.Write(error.ToString());
        }
        finally
        {
            conn.Close();
        }

        Response.Redirect("~/Board/List.aspx");
    }
}
