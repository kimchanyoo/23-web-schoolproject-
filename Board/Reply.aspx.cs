using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class Board_Reply : System.Web.UI.Page
{
    protected void btnReply_Click(object sender, ImageClickEventArgs e)
    {
        // 현 게시물의 ref_id, ref_no, ref_depth 가져오기
        string selectString = "SELECT ref_id, ref_no, ref_depth FROM board WHERE ";
        selectString += "b_no=" + Request["sn"];

        int refId = 0;
        int innerId = 0;
        int depth = 0;

        DBConn conn = new DBConn();
        SqlDataReader dr = conn.ExecuteReader(selectString);
        if (dr.Read())
        {
            refId = (int)dr["ref_id"];
            innerId = (int)dr["ref_no"];
            depth = (int)dr["ref_depth"];
        }
        dr.Close();

        // 현 게시물과 같은 글을 참조하는 글 중에서 현 게시물 이후의 ref_no 1 증가
        string updateString = "UPDATE board SET ref_no=ref_no+1 WHERE ";
        updateString += "ref_id=" + refId.ToString();
        updateString += " AND ref_no > " + innerId.ToString();
        conn.ExecuteNonQuery(updateString);

        string insertString = "INSERT INTO board (b_id, b_passwd, b_title, b_content, ";
        insertString += "ref_id, ref_no, ref_depth, b_read, b_flag, b_regdate) ";
        insertString += "VALUES(@b_id, @b_passwd, @b_title, @b_content, @ref_id, @ref_no, ";
        insertString += "@ref_depth, 0, 'N', GETDATE())";

        string hashedPassword =
            FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "sha1");

        SqlCommand cmd = new SqlCommand(insertString, conn.GetConn());
        cmd.Parameters.AddWithValue("@b_id", txtWriter.Text);
        cmd.Parameters.AddWithValue("@b_passwd", hashedPassword);
        cmd.Parameters.AddWithValue("@b_title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@b_content", txtMessage.Text);
        cmd.Parameters.AddWithValue("@ref_id", refId);
        cmd.Parameters.AddWithValue("@ref_no", ++innerId);
        cmd.Parameters.AddWithValue("@ref_depth", ++depth);

        try
        {
            cmd.ExecuteNonQuery();
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
