<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
            background-color: #baded7;
        }
        .login-content{
            width: 50%; height: 60%; 
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
        <table class="login-content">
            <tr>
                <td colspan="2">
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="label" Text="로그인"></asp:Label>
                    <br /> <br /> <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style">
                    <asp:Label ID="Label2" runat="server" Text="아이디"></asp:Label>
                </td>
                <td class="auto-style">
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="textbox"  Placeholder=" ID"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style">
                    <asp:Label ID="Label3" runat="server" Text="비밀번호"></asp:Label>
                </td>
                <td class="auto-style">
                    <asp:TextBox ID="txtPa" runat="server" CssClass="textbox" TextMode="Password"  Placeholder=" Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br /> <br />
                    <asp:Button ID="Button8" runat="server" Text="로그인" OnClick="Button8_Click" CssClass="button"/>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

