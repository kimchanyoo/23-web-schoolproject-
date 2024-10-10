using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Board_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string selectString = "SELECT * FROM board WHERE b_no=" + Request["sn"];

            DBConn conn = new DBConn();
            SqlDataReader dr = conn.ExecuteReader(selectString);

            if (dr.Read()){
                txtWriter.Text = dr["b_id"].ToString();
                txtTitle.Text = dr["b_title"].ToString();
                txtMessage.Text = dr["b_content"].ToString();
            }

            dr.Close();
            conn.Close();
        }
    }

    protected void btnEdit_Click(object sender, ImageClickEventArgs e)
    {
        string updateString = "UPDATE board SET b_id=@b_id, ";
        updateString += "b_title=@b_title, b_content=@b_content ";
        updateString += "WHERE b_no=" + Request["sn"];

        DBConn conn = new DBConn();
        SqlCommand cmd = new SqlCommand(updateString, conn.GetConn());

        cmd.Parameters.AddWithValue("@b_id", txtWriter.Text);
        cmd.Parameters.AddWithValue("@b_title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@b_content", txtMessage.Text);

        cmd.ExecuteNonQuery();
        
        conn.Close();

        Response.Redirect("~/Board/List.aspx");
    }
}
