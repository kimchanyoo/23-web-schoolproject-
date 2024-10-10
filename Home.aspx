<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .all-content{
        width: 100%; height:100%;
        border-top: medium solid #9ed1c7;
        border-bottom: medium solid #9ed1c7;
        /* border: medium solid #9ed1c7; border: none; */
    }
    .left-content {
        width: 40%;
        text-align: center;
        color: #FFFFFF;
    }
    .right-content {
        width: 60px;
        text-align: center;
        font-size: 20px;
    }
    .schedule-btn {
        font-size: x-large;
        text-decoration: none;
        color: #1e767a;
    }
    .schedule-btn:hover{ color: #005766; }
    .left-img{
        /* Height="500px" Width="591px"  */
        width: 70%; height: 65%;
    }
    .bottom-left {
        font-size: 20px;
        padding: 20px 0 0 40px;
        border-top: medium solid #9ed1c7;
    }
    .bottom-right {
        font-size: 20px;
        padding:0 40px 10px 0;
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="all-content">
        <tr>
            <td class="left-content">
                <br /><br />
                <asp:Image ID="img_Welcome" runat="server" CssClass="left-img" ImageAlign="Middle" ImageUrl="~/images/img-board.jpg"/>
                <br /><br /><br />
            </td>
            <td class="right-content">
                <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
                <br /><br /><br />
                <asp:Label ID="Label3" runat="server">
                    <span style="color: #1e767a;">Time Manager 소개</span>
                    <br /> <br />
                    <span style="color: #1e767a;">Time Manager</span>는 개인 일정표 생성 사이트입니다.
                    <br /> <br />
                    웹  사이트로  사용자들로  자신의  일정을  만들고  공유하는  커뮤니티  사이트를  만드는  것이  목표입니다.
                    <br /> <br />
                    회원가입을  하시면  자신의  일정표를  등록하실  수  있으며  게시판을  통해  다양한  사람들과의  소통을  할  수  있습니다.
                </asp:Label>
                <br /> <br /> <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="schedule-btn" PostBackUrl="~/MainWindow.aspx">바로 일정표 만들기</asp:LinkButton>
            </td>
        </tr>
        <tr> 
            <td colspan="2" class="bottom-left">
                <asp:Label ID="Label2" runat="server">변명 중에서도 가장 어리석고 못난 변명은 <span style="color: darkred">"시간이 없어서"</span>라는 변명이다. </asp:Label>
        </tr>
        <tr>
            <td colspan="2" class="bottom-right">
                <asp:Label ID="Label1" runat="server">- 엔드류 카네기</asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

