using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Board_Read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // 조회 수 증가
            string updateString = "UPDATE board SET b_read=b_read+1 ";
            updateString += "WHERE b_no=" + Request["sn"];

            // 쿼리 문자열로 받은 게시물 ID에 해당하는 데이터 행 선택
            string selectString = "SELECT * FROM board WHERE b_no=" + Request["sn"];

            DBConn conn = new DBConn();
            conn.ExecuteNonQuery(updateString);
            SqlDataReader dr = conn.ExecuteReader(selectString);

            if (dr.Read())
            {
                lblWriter.Text = dr["b_id"].ToString();
                lblRegDate.Text = string.Format("{0:yyyy-MM-dd}", (DateTime)dr["b_regdate"]);
                lblTitle.Text = dr["b_no"].ToString() + ". ";
                lblTitle.Text += dr["b_title"].ToString();
                lblTitle.Text += "(조회 : " + dr["b_read"].ToString() + ")";
                txtMessage.Text = dr["b_content"].ToString();

                // 수정, 답변, 삭제에 필요한 게시물 ID를 쿼리 문자열로 넘김
                btnEdit.PostBackUrl = 
                    "~/Board/CheckPassword.aspx?mode=edit&sn=" + dr["b_no"].ToString();
                btnReply.PostBackUrl = 
                    "~/Board/Reply.aspx?sn=" + dr["b_no"].ToString();
                btnDelete.PostBackUrl =
                    "~/Board/CheckPassword.aspx?mode=del&sn=" + dr["b_no"].ToString();
            }

            dr.Close();
            conn.Close();
        }
    }
}
