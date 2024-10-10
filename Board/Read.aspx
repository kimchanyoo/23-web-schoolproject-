<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Read.aspx.cs" Inherits="Board_Read" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        @font-face {
            font-family: 'Tenada';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-2@1.0/Tenada.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        .all-content{
            width: 100%; height:100%; 
            display: flex; 
            flex-direction: column; 
            align-items: center;
            border-top: medium solid #9ed1c7;
        }
        .text{
            font-size: 20px;
            margin: 35px 20px;
        }
        .text-img{ width: 15px; height: 15px; }
        .table{ 
            border-collapse: collapse; 
            margin:0 auto; 
            text-align: left;
            font-size: 18px;
        }
        .blank{ width: 100px; height: 16px; }
        .data{
            width:150px; height: 30px;
            vertical-align:top;
        }
        .data span{ border-bottom: medium solid #9ed1c7; }
        .content{ width: 1000px; }
        .textbox{
            width: 1000px; height: 200px;
            border: 1px solid #B0ADF5;
            font-size: 18px;
            font-family: 'Tenada';
        }
        .buttons input{ margin-right: 10px; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="all-content" >
        <div class="text">
            <img class="text-img" src="../images/img-add.png" />&nbsp;&nbsp;&nbsp;글 읽 기
        </div>
        <table class="table">
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;작성자&nbsp;&nbsp;</span></td>
                <td class="content"> <asp:Label ID="lblWriter" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;작성 날짜&nbsp;&nbsp;</span></td>
                <td class="content"> <asp:Label ID="lblRegDate" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;제목&nbsp;&nbsp;</span></td>
                <td class="content"> <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label> </td>
            </tr>
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;내용&nbsp;&nbsp;</span></td>
                <td class="content"> <asp:TextBox  ID="txtMessage" CssClass="textbox" runat="server" Text="Label" ReadOnly="True" TextMode="MultiLine"> </asp:TextBox> </td>
            </tr>
            <tr><td colspan="2" class="blank"></td></tr>
        </table>

        <div class="buttons">
            <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="~/images/btn_edit.gif"/>
            <asp:ImageButton ID="btnReply" runat="server" ImageUrl="~/images/btn_reply.gif" />
            <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/images/btn_delete.gif" />
            <asp:ImageButton ID="btnList" runat="server" ImageUrl="~/images/btn_list.gif" PostBackUrl="~/Board/List.aspx" CausesValidation="False" />
        </div>
    </div>
    
</asp:Content>


