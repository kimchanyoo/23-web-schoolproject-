<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_A.master" AutoEventWireup="true" CodeFile="List_Board_A.aspx.cs" Inherits="Admin_List_Board_A" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .all-content{
            width: 100%; height:100%; 
            display: flex; 
            flex-direction: column; 
            align-items: center;
        }
        .text{
            height: 20px; 
            font-size: 20px;
            margin: 20px;
        }
        .text-img{ width: 15px; height: 15px; }
        .table{ 
            border-collapse: collapse; 
            margin:0 auto; 
            text-align: center;
        }
        th{
            padding: 5px 10px;
            border-top: none;
            background: #21453e;
            color: #fff;
        }
        .table tbody tr td:nth-child(3){
            text-decoration: none;
            text-align: left;
            padding: 5px 30px;
        }
        .table th:last-child{ padding: 5px 100px; }
        .table tr{
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            background-color: #f5f9fc;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="all-content" >
        <div class="text">
            <img class="text-img" src="../images/img-add.png" />&nbsp;&nbsp;&nbsp;글 목 록
        </div>
        <table class="table">
            <tr>
                <td>
                    <asp:SqlDataSource ID="dSource" runat="server" DataSourceMode="DataSet" ConnectionString="<%$ ConnectionStrings:weppoConnectionString %>" 
                        SelectCommand="SELECT [b_no], [b_id], [b_title], [ref_id], [ref_no], [ref_depth], [b_read], [b_flag], [b_regdate] FROM [board] ORDER BY [b_id], [b_regdate]">
                    </asp:SqlDataSource>

                    <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious" DataKeyNames="b_no">
                        <RowStyle BackColor="#EFF3FB" />
                        <AlternatingRowStyle BackColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFFFFF" HorizontalAlign="Left" />
                        <PagerSettings NextPageImageUrl="../images/btn_next.gif" PreviousPageImageUrl="../images/btn_prev.gif" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EmptyDataTemplate>
                            등록된 게시물이 없습니다.
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField DataField="b_no" HeaderText="번호" InsertVisible="False" ReadOnly="True" SortExpression="b_no"/>
                            <asp:BoundField DataField="b_id" HeaderText="아이디" SortExpression="b_id"/>
                            <asp:BoundField DataField="b_title" HeaderText="제목" SortExpression="b_title"/>
                            <asp:BoundField DataField="ref_id" HeaderText="참조 번호" SortExpression="ref_id" />
                            <asp:BoundField DataField="ref_no" HeaderText="내부 순서" SortExpression="ref_no" />
                            <asp:BoundField DataField="ref_depth" HeaderText="들여쓰기 깊이" SortExpression="ref_depth" />
                            <asp:BoundField DataField="b_read" HeaderText="조회수" SortExpression="b_read" />
                            <asp:BoundField DataField="b_flag" HeaderText="삭제여부" SortExpression="b_flag" />
                            <asp:BoundField DataField="b_regdate" HeaderText="등록일자" SortExpression="b_regdate" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

