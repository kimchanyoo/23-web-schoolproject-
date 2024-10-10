<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Write.aspx.cs" Inherits="Board_Write" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
            border: 1px solid #B0ADF5;
            font-size: 18px;
            font-family: 'Tenada';
            border: 0;
            border-radius: 15px;
            outline: none;
            padding: 7px 9px 5px 9px;
            background-color: rgb(233, 233, 233);
        }
        .textbox:focus{ box-shadow: 0 0 1px 3px #9ed1c7; }
        .buttons input{ margin-right: 10px; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="all-content" >
        <div class="text">
            <img class="text-img" src="../images/img-add.png" />&nbsp;&nbsp;&nbsp;글 쓰 기
        </div>
        <table class="table">
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;작성자&nbsp;&nbsp;</span></td>
                <td class="content">
                    <asp:TextBox ID="txtWriter" runat="server" MaxLength="50" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvWriter" runat="server" ErrorMessage="작성자는 필수 입력 항목입니다." Display="None" ControlToValidate="txtWriter"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;게시물 비밀번호&nbsp;&nbsp;</span></td>
                <td class="content">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="50" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="글 비밀번호는 필수 입력 항목입니다." ControlToValidate="txtPassword" Display="None"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;제목&nbsp;&nbsp;</span></td>
                <td class="content">
                    <asp:TextBox ID="txtTitle" runat="server" MaxLength="250" Width="400px" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ErrorMessage="제목은 필수 입력 항목입니다." ControlToValidate="txtTitle" Display="None"> </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td colspan="2" class="blank"></td></tr>
            <tr>
                <td class="data"><span>&nbsp;&nbsp;내용&nbsp;&nbsp;</span></td>
                <td class="content"> 
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Width="1000px" Height="200px" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 50px;">
                    <asp:ValidationSummary ID="vsWrite" runat="server" ShowMessageBox="True" ShowSummary="False" />
                </td>
            </tr>
        </table>
        <div class="buttons">
            <asp:ImageButton ID="btnWrite" runat="server" onclick="btnWrite_Click" ImageUrl="~/images/btn_write.gif"/>
            <asp:ImageButton ID="btnList" runat="server" ImageUrl="~/images/btn_list.gif" PostBackUrl="~/Board/List.aspx" CausesValidation="False" />
        </div>
    </div>
    
</asp:Content>
