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

public partial class TeamProject_MainWindow : System.Web.UI.Page
{
    private string connectionString = @"Data Source=DESKTOP-8RPAOC3;" + "Initial Catalog=weppo;" + "User ID=sa;Password=12341234";
    protected void Page_Load(object sender, EventArgs e)
    {
        // 저장된 일정표 출력
        showTable(User.Identity.Name);

        // lblMainID.Text = 현재 로그인한 사람의 ID가 표시되어야함
        lblMainID.Text = User.Identity.Name;

        // 상태메시지 출력
        string status = "SELECT mem_statusMsg FROM member WHERE mem_id=@ID";
        SqlConnection sc = new SqlConnection(connectionString);
        SqlCommand scmd = new SqlCommand(status, sc);
        scmd.Parameters.AddWithValue("@ID", User.Identity.Name);
        SqlDataReader rd;
        try
        {
            sc.Open();
            rd = scmd.ExecuteReader();
            rd.Read();

            lblStatusMsg.Text = rd["mem_statusMsg"].ToString();
            rd.Close();
        }
        catch (Exception error)
        {
            STATUS.Text = "상메 오류 시작 " + error.Message + " 상메 오류";
        }
        finally
        {
            sc.Close();
        }

        // 로그인 한 사람의 schedule 테이블 안의 s_place가 ddlPlace에 넣어져야함
        string selectPlace = "SELECT DISTINCT s_place FROM schedule WHERE s_id=@ID";

        SqlConnection sc2 = new SqlConnection(connectionString);
        SqlCommand scmd2 = new SqlCommand(selectPlace, sc2);
        SqlDataReader rd2;

        scmd2.Parameters.AddWithValue("@ID", User.Identity.Name);

        try
        {
            sc2.Open();
            rd2 = scmd2.ExecuteReader();
            while (rd2.Read())
            {
                ListItem place = new ListItem();
                place.Text = rd2["s_place"].ToString();
                place.Value = rd2["s_place"].ToString();
                ddlPlace.Items.Add(place);
            }
            rd2.Close();

        }
        catch (Exception error)
        {
            STATUS.Text = "ddl 오류 시작 " + error.Message + " ddl추가";
        }
        finally
        {
            sc2.Close();
        }
    }

    protected void showTable(string userID)
    {
        string selectPlace = "SELECT s_place, s_day, s_time FROM schedule WHERE s_id=@ID";

        SqlConnection sc2 = new SqlConnection(connectionString);
        SqlCommand scmd2 = new SqlCommand(selectPlace, sc2);
        scmd2.Parameters.AddWithValue("@ID", userID);
        SqlDataReader rd2;
        try
        {
            sc2.Open();
            rd2 = scmd2.ExecuteReader();
            while (rd2.Read())
            {
                string coord = (rd2["s_day"].ToString() + rd2["s_time"].ToString());
                string place = rd2["s_place"].ToString();
                // 화면 출력
                // 월요일
                if (mon1.ID == coord) { mon1.Text = place; }
                else if (mon2.ID == coord) { mon2.Text = place; }
                else if (mon3.ID == coord) { mon3.Text = place; }
                else if (mon4.ID == coord) { mon4.Text = place; }
                else if (mon5.ID == coord) { mon5.Text = place; }
                else if (mon6.ID == coord) { mon6.Text = place; }
                else if (mon7.ID == coord) { mon7.Text = place; }
                else if (mon8.ID == coord) { mon8.Text = place; }
                else if (mon9.ID == coord) { mon9.Text = place; }
                //화요일
                else if (tue1.ID == coord) { tue1.Text = place; }
                else if (tue2.ID == coord) { tue2.Text = place; }
                else if (tue3.ID == coord) { tue3.Text = place; }
                else if (tue4.ID == coord) { tue4.Text = place; }
                else if (tue5.ID == coord) { tue5.Text = place; }
                else if (tue6.ID == coord) { tue6.Text = place; }
                else if (tue7.ID == coord) { tue7.Text = place; }
                else if (tue8.ID == coord) { tue8.Text = place; }
                else if (tue9.ID == coord) { tue9.Text = place; }
                //수요일
                else if (wed1.ID == coord) { wed1.Text = place; }
                else if (wed2.ID == coord) { wed2.Text = place; }
                else if (wed3.ID == coord) { wed3.Text = place; }
                else if (wed4.ID == coord) { wed4.Text = place; }
                else if (wed5.ID == coord) { wed5.Text = place; }
                else if (wed6.ID == coord) { wed6.Text = place; }
                else if (wed7.ID == coord) { wed7.Text = place; }
                else if (wed8.ID == coord) { wed8.Text = place; }
                else if (wed9.ID == coord) { wed9.Text = place; }
                //목요일
                else if (thu1.ID == coord) { thu1.Text = place; }
                else if (thu2.ID == coord) { thu2.Text = place; }
                else if (thu3.ID == coord) { thu3.Text = place; }
                else if (thu4.ID == coord) { thu4.Text = place; }
                else if (thu5.ID == coord) { thu5.Text = place; }
                else if (thu6.ID == coord) { thu6.Text = place; }
                else if (thu7.ID == coord) { thu7.Text = place; }
                else if (thu8.ID == coord) { thu8.Text = place; }
                else if (thu9.ID == coord) { thu9.Text = place; }
                //금요일
                else if (fri1.ID == coord) { fri1.Text = place; }
                else if (fri2.ID == coord) { fri2.Text = place; }
                else if (fri3.ID == coord) { fri3.Text = place; }
                else if (fri4.ID == coord) { fri4.Text = place; }
                else if (fri5.ID == coord) { fri5.Text = place; }
                else if (fri6.ID == coord) { fri6.Text = place; }
                else if (fri7.ID == coord) { fri7.Text = place; }
                else if (fri8.ID == coord) { fri8.Text = place; }
                else if (fri9.ID == coord) { fri9.Text = place; }
            }
            rd2.Close();

        }
        catch (Exception error)
        {
            STATUS.Text = "DB값 출력 오류 시작 " + error.Message + " 오류 끝";
        }
        finally
        {
            sc2.Close();
        }


    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string coord = (ddlDayAdd.SelectedValue + ddlTimeAdd.SelectedValue);
        string sch_id = User.Identity.Name;
        string sch_place = txtPlace.Text;
        string sch_day = ddlDayAdd.SelectedValue;
        string sch_time = ddlTimeAdd.SelectedValue;

        SqlConnection sc = new SqlConnection(connectionString);
        SqlCommand scmd = new SqlCommand("InsertSchedule", sc);
        scmd.CommandType = CommandType.StoredProcedure;
        
        SqlParameter sql_sid = new SqlParameter("@s_id", SqlDbType.VarChar, 50);
        sql_sid.Value = sch_id;
        
        SqlParameter sql_splace = new SqlParameter("@s_place", SqlDbType.VarChar, 80);
        sql_splace.Value = sch_place;

        SqlParameter sql_sday = new SqlParameter("@s_day", SqlDbType.VarChar, 5);
        sql_sday.Value = sch_day;

        SqlParameter sql_stime = new SqlParameter("@s_time", SqlDbType.Int);
        sql_stime.Value = sch_time;

        // 화면 출력
        // 월요일
        if (mon1.ID == coord) { mon1.Text = txtPlace.Text; }
        else if (mon2.ID == coord) { mon2.Text = txtPlace.Text; }
        else if (mon3.ID == coord) { mon3.Text = txtPlace.Text; }
        else if (mon4.ID == coord) { mon4.Text = txtPlace.Text; }
        else if (mon5.ID == coord) { mon5.Text = txtPlace.Text; }
        else if (mon6.ID == coord) { mon6.Text = txtPlace.Text; }
        else if (mon7.ID == coord) { mon7.Text = txtPlace.Text; }
        else if (mon8.ID == coord) { mon8.Text = txtPlace.Text; }
        else if (mon9.ID == coord) { mon9.Text = txtPlace.Text; }
        //화요일
        else if (tue1.ID == coord) { tue1.Text = txtPlace.Text; }
        else if (tue2.ID == coord) { tue2.Text = txtPlace.Text; }
        else if (tue3.ID == coord) { tue3.Text = txtPlace.Text; }
        else if (tue4.ID == coord) { tue4.Text = txtPlace.Text; }
        else if (tue5.ID == coord) { tue5.Text = txtPlace.Text; }
        else if (tue6.ID == coord) { tue6.Text = txtPlace.Text; }
        else if (tue7.ID == coord) { tue7.Text = txtPlace.Text; }
        else if (tue8.ID == coord) { tue8.Text = txtPlace.Text; }
        else if (tue9.ID == coord) { tue9.Text = txtPlace.Text; }
        //수요일
        else if (wed1.ID == coord) { wed1.Text = txtPlace.Text; }
        else if (wed2.ID == coord) { wed2.Text = txtPlace.Text; }
        else if (wed3.ID == coord) { wed3.Text = txtPlace.Text; }
        else if (wed4.ID == coord) { wed4.Text = txtPlace.Text; }
        else if (wed5.ID == coord) { wed5.Text = txtPlace.Text; }
        else if (wed6.ID == coord) { wed6.Text = txtPlace.Text; }
        else if (wed7.ID == coord) { wed7.Text = txtPlace.Text; }
        else if (wed8.ID == coord) { wed8.Text = txtPlace.Text; }
        else if (wed9.ID == coord) { wed9.Text = txtPlace.Text; }
        //목요일
        else if (thu1.ID == coord) { thu1.Text = txtPlace.Text; }
        else if (thu2.ID == coord) { thu2.Text = txtPlace.Text; }
        else if (thu3.ID == coord) { thu3.Text = txtPlace.Text; }
        else if (thu4.ID == coord) { thu4.Text = txtPlace.Text; }
        else if (thu5.ID == coord) { thu5.Text = txtPlace.Text; }
        else if (thu6.ID == coord) { thu6.Text = txtPlace.Text; }
        else if (thu7.ID == coord) { thu7.Text = txtPlace.Text; }
        else if (thu8.ID == coord) { thu8.Text = txtPlace.Text; }
        else if (thu9.ID == coord) { thu9.Text = txtPlace.Text; }
        //금요일
        else if (fri1.ID == coord) { fri1.Text = txtPlace.Text; }
        else if (fri2.ID == coord) { fri2.Text = txtPlace.Text; }
        else if (fri3.ID == coord) { fri3.Text = txtPlace.Text; }
        else if (fri4.ID == coord) { fri4.Text = txtPlace.Text; }
        else if (fri5.ID == coord) { fri5.Text = txtPlace.Text; }
        else if (fri6.ID == coord) { fri6.Text = txtPlace.Text; }
        else if (fri7.ID == coord) { fri7.Text = txtPlace.Text; }
        else if (fri8.ID == coord) { fri8.Text = txtPlace.Text; }
        else if (fri9.ID == coord) { fri9.Text = txtPlace.Text; }

        scmd.Parameters.Add(sql_sid);
        scmd.Parameters.Add(sql_splace);
        scmd.Parameters.Add(sql_sday);
        scmd.Parameters.Add(sql_stime);

        try
        {
            sc.Open();
            scmd.ExecuteNonQuery();
        }
        catch (Exception error)
        {
            //Response.Write(@"<script>alert('에러')</script>");
            STATUS.Text = error.Message;
        }
        finally
        {
            sc.Close();
            Response.Redirect("MainWindow.aspx");
        }
    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        string coord = (ddlDayDel.SelectedValue + ddlTimeDel.SelectedValue);
        string sch_id = User.Identity.Name;
        string sch_place = ddlPlace.Text;
        string sch_day = ddlDayDel.SelectedValue;
        string sch_time = ddlTimeDel.SelectedValue;

        // Connection 객체 생성
        SqlConnection sc = new SqlConnection(connectionString);
        SqlCommand scmd = new SqlCommand("DeleteSchedule", sc);
        scmd.CommandType = CommandType.StoredProcedure;

        // 화면 출력
        // 월요일
        if (mon1.ID == coord) { mon1.Text = ""; }
        else if (mon2.ID == coord) { mon2.Text = ""; }
        else if (mon3.ID == coord) { mon3.Text = ""; }
        else if (mon4.ID == coord) { mon4.Text = ""; }
        else if (mon5.ID == coord) { mon5.Text = ""; }
        else if (mon6.ID == coord) { mon6.Text = ""; }
        else if (mon7.ID == coord) { mon7.Text = ""; }
        else if (mon8.ID == coord) { mon8.Text = ""; }
        else if (mon9.ID == coord) { mon9.Text = ""; }
        //화요일
        else if (tue1.ID == coord) { tue1.Text = ""; }
        else if (tue2.ID == coord) { tue2.Text = ""; }
        else if (tue3.ID == coord) { tue3.Text = ""; }
        else if (tue4.ID == coord) { tue4.Text = ""; }
        else if (tue5.ID == coord) { tue5.Text = ""; }
        else if (tue6.ID == coord) { tue6.Text = ""; }
        else if (tue7.ID == coord) { tue7.Text = ""; }
        else if (tue8.ID == coord) { tue8.Text = ""; }
        else if (tue9.ID == coord) { tue9.Text = ""; }
        //수요일
        else if (wed1.ID == coord) { wed1.Text = ""; }
        else if (wed2.ID == coord) { wed2.Text = ""; }
        else if (wed3.ID == coord) { wed3.Text = ""; }
        else if (wed4.ID == coord) { wed4.Text = ""; }
        else if (wed5.ID == coord) { wed5.Text = ""; }
        else if (wed6.ID == coord) { wed6.Text = ""; }
        else if (wed7.ID == coord) { wed7.Text = ""; }
        else if (wed8.ID == coord) { wed8.Text = ""; }
        else if (wed9.ID == coord) { wed9.Text = ""; }
        //목요일
        else if (thu1.ID == coord) { thu1.Text = ""; }
        else if (thu2.ID == coord) { thu2.Text = ""; }
        else if (thu3.ID == coord) { thu3.Text = ""; }
        else if (thu4.ID == coord) { thu4.Text = ""; }
        else if (thu5.ID == coord) { thu5.Text = ""; }
        else if (thu6.ID == coord) { thu6.Text = ""; }
        else if (thu7.ID == coord) { thu7.Text = ""; }
        else if (thu8.ID == coord) { thu8.Text = ""; }
        else if (thu9.ID == coord) { thu9.Text = ""; }
        //금요일
        else if (fri1.ID == coord) { fri1.Text = ""; }
        else if (fri2.ID == coord) { fri2.Text = ""; }
        else if (fri3.ID == coord) { fri3.Text = ""; }
        else if (fri4.ID == coord) { fri4.Text = ""; }
        else if (fri5.ID == coord) { fri5.Text = ""; }
        else if (fri6.ID == coord) { fri6.Text = ""; }
        else if (fri7.ID == coord) { fri7.Text = ""; }
        else if (fri8.ID == coord) { fri8.Text = ""; }
        else if (fri9.ID == coord) { fri9.Text = ""; }

        SqlParameter sql_sid = new SqlParameter("@s_id", SqlDbType.VarChar, 50);
        sql_sid.Value = sch_id;

        SqlParameter sql_splace = new SqlParameter("@s_place", SqlDbType.VarChar, 80);
        sql_splace.Value = sch_place;

        SqlParameter sql_sday = new SqlParameter("@s_day", SqlDbType.VarChar, 5);
        sql_sday.Value = sch_day;

        SqlParameter sql_stime = new SqlParameter("@s_time", SqlDbType.VarChar, 50);
        sql_stime.Value = sch_time;

        scmd.Parameters.Add(sql_sid);
        scmd.Parameters.Add(sql_splace);
        scmd.Parameters.Add(sql_sday);
        scmd.Parameters.Add(sql_stime);

        try
        {
            sc.Open();
            scmd.ExecuteNonQuery();
        }
        catch (Exception error)
        {
            // Response.Write(@"<script>alert('에러')</script>");
            STATUS.Text = error.Message;
        }
        finally
        {
            sc.Close();
            //Response.Write(@"<script>alert('일정이 삭제되었습니다');</script>");
            Response.Redirect("MainWindow.aspx");
        }
    }
}