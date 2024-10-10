<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_A.master" AutoEventWireup="true" CodeFile="List_User_A.aspx.cs" Inherits="Admin_List_User_A" %>

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
        .table th{
            padding: 5px 40px;
            border-top: none;
            background: #21453e;
            color: #fff;
        }
        .table th:nth-child(3){ padding: 5px 100px; }
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
            <img class="text-img" src="../images/img-add.png" />&nbsp;&nbsp;&nbsp;회 원 목 록
        </div>
        <table class="table">
            <tr>
                <td>
                    <asp:SqlDataSource ID="dSource" runat="server" DataSourceMode="DataSet" 
                        ConnectionString="<%$ ConnectionStrings:weppoConnectionString %>" 
                        SelectCommand="SELECT [mem_id], [mem_passwd], [mem_statusMsg], [mem_name] FROM [member] ORDER BY [mem_id]">
                    </asp:SqlDataSource>

                    <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious" DataKeyNames="mem_id">
                        <RowStyle BackColor="#EFF3FB" />
                        <AlternatingRowStyle BackColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFFFFF" HorizontalAlign="Left" />
                        <PagerSettings NextPageImageUrl="../images/btn_next.gif" PreviousPageImageUrl="../images/btn_prev.gif" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EmptyDataTemplate>
                            등록된 사용자가 없습니다.
                        </EmptyDataTemplate>
                        <Columns>
                            <asp:BoundField DataField="mem_id" HeaderText="아이디" InsertVisible="False" ReadOnly="True" SortExpression="mem_id">
                            </asp:BoundField>
                            <asp:BoundField DataField="mem_passwd" HeaderText="비밀번호" SortExpression="mem_passwd">
                            </asp:BoundField>
                            <asp:BoundField DataField="mem_statusMsg" HeaderText="상태메시지" SortExpression="mem_statusMsg">
                            </asp:BoundField>
                            <asp:BoundField DataField="mem_name" HeaderText="이름" SortExpression="mem_name" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    
</asp:Content>

