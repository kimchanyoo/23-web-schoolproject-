<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckPassword.aspx.cs" Inherits="Board_CheckPassword" %>

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
            text-align: center;
        }
        .text p{
            font-size: 18px; 
            margin: 20px;
        }
        .text-img{ width: 15px; height: 15px; }
        .table{ 
            width: 100%; height: auto;
            border-collapse: collapse; 
            margin:0 auto; 
            text-align: center;
            font-size: 18px;
        }
        .data{
            width:150px; height: 30px;
        }
        .textbox{
            font-family: 'Tenada';
            font-size: 15px;
            border: 0;
            border-radius: 15px;
            outline: none;
            padding: 7px 9px 5px 9px;
            margin-right: 10px;
            background-color: rgb(233, 233, 233);
        }
        .textbox:focus{ box-shadow: 0 0 1px 3px #9ed1c7; }
        .buttons input{ margin-right: 10px; }
        .auto-style1 {
            width: 311px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="all-content" > 
        <div class="text">
            <img class="text-img" src="../images/img-add.png" />&nbsp;&nbsp;&nbsp;비밀번호 확인
            <p>
                ※ 글을 작성했을 때 입력한 비밀번호를 입력하세요.
            </p>
        </div>

        <div>
            <table class="table">
                <tr>
                    <td class="data">게시물 비밀번호</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" MaxLength="50" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="비밀번호를 넣어 확인해야 합니다."
                            ControlToValidate="txtPassword" Display="None"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 100px;">
                        <asp:ValidationSummary ID="vsWrite" runat="server" ShowMessageBox="True" ShowSummary="False" />
                        <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        

        <div class="buttons">
            <asp:ImageButton ID="btnEditOrDelete" runat="server" onclick="btnEditOrDelete_Click" />
            <asp:ImageButton ID="btnList" runat="server" ImageUrl="~/images/btn_list.gif" PostBackUrl="~/Board/List.aspx" CausesValidation="False" />
        </div>
    </div>
    
</asp:Content>

