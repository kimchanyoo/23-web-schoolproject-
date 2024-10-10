<%@  Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="EditUser" %>

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
            justify-content:center; 
            border-top: medium solid #9ed1c7;
            background-color: #fff;
        }
        .login-content{
            width: 50%; height: 90%; 
            text-align:center; 
            margin: auto; 
            background-color: #fff;
            border-radius: 15px;
        }
        .label { font-size: 30px; }
        .auto-style {
            width: 200px; height: 23px;
            text-align: center;
            font-size: 20px;
            padding-bottom: 15px;
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
        .button {
            width: 140px; height: 45px;
            font-family: 'Tenada';
            font-size: 15px;
            text-transform: uppercase;
            letter-spacing: 2.5px;
            font-weight: 500;
            color: #000;
            background-color: #fff;
            border: none;
            border-radius: 45px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.4);
            transition: all 0.3s ease 0s;
            cursor: pointer;
            outline: none;
          }
        .button:hover {
            background-color: #2EE59D;
            box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.3);
            color: #fff;
            transform: translateY(-7px);
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="all-content">
        <table  class="login-content">
            <tr>
                <td colspan="2">
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="회원정보 수정" CssClass="label"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style">
                    <asp:Label ID="Label5" runat="server" Text="이름"></asp:Label>
                </td>
                <td class="auto-style">
                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox"  Placeholder=" Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style">
                    <asp:Label ID="Label7" runat="server" Text="비밀번호"></asp:Label>
                </td>
                <td class="auto-style">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="textbox"  Placeholder=" Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style">
                    <asp:Label ID="Label8" runat="server" Text="비밀번호확인"></asp:Label>
                </td>
                <td class="auto-style">
                    <asp:TextBox ID="txtRetype" runat="server" TextMode="Password" CssClass="textbox"  Placeholder=" Re-enter password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style">
                    <asp:Label ID="Label1" runat="server" Text="상태메시지"></asp:Label>
                </td>
                <td class="auto-style">
                    <asp:TextBox ID="txtStatusMsg" runat="server" CssClass="textbox"  Placeholder=" Status message"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button9" runat="server" Text="회원정보 수정" OnClick="Button9_Click" CssClass="button" />
                </td>
            </tr>
        </table>
    </div>
    
</asp:Content>