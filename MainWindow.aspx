<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainWindow.aspx.cs" Inherits="TeamProject_MainWindow" %>

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
            border-top: medium solid #9ed1c7;
        }
        .auto-style_MP, .auto-style0_MP, .auto-style1_MP, .auto-style2_MP{
            text-align: center;
            border-collapse : collapse;
        }
        .auto-style0_MP, .auto-style1_MP, .auto-style2_MP{
            border-bottom: 1px solid rgb(158, 209, 199);
            border-left: 1px solid rgb(158, 209, 199);
        }
        td:first-child { border-left: none; }
        tr:last-child>td { border-bottom: none; }
        .auto-style_MP {
            margin-left: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(158, 209, 199, .5);
        }
        .auto-style0_MP { padding: 10px; }
        .auto-style1_MP { width: 300px; height: 50px; }
        .auto-style3_MP {
            width: 35%; height: 50px;
            font-size: 18px;
            text-align: center;
        }
        .textbox, .dropdownlist, .button{
            font-family: 'Tenada';
            font-size: 15px;
            border: 0;
            border-radius: 15px;
            outline: none;
            padding: 7px 9px 5px 9px;
            margin-right: 10px;
            background-color: rgb(233, 233, 233);
        }
        .textbox:focus, .dropdownlist:focus, .button:focus{ box-shadow: 0 0 1px 3px #9ed1c7; }
        .dropdownlist option{ background: rgb(233, 233, 233); color: #000; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="all-content">
        <table>
            <tr><td colspan="2" style="height: 40px;"> </td> </tr>
            <tr>
                <!-- 일정표 -->
                <td rowspan="5" style="width: 65%;">
                    <div style="text-align:center; margin: 20px 10px">
                        <span style="font-size: 30px">일정표</span> <br />
                    </div>
                    <div>
                        <table class="auto-style_MP">
                            <!-- 요일 -->
                            <tr>
                                <td class="auto-style0_MP"></td>
                                <td class="auto-style1_MP">월</td>
                                <td class="auto-style1_MP">화</td>
                                <td class="auto-style1_MP">수</td>
                                <td class="auto-style1_MP">목</td>
                                <td class="auto-style1_MP">금</td>
                            </tr>
                            <!-- 9 to 10 -->
                            <tr>
                                <td class="auto-style0_MP">09~10</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon1" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue1" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed1" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu1" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri1" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 10 to 11 -->
                            <tr>
                                <td class="auto-style0_MP">10~11</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon2" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue2" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed2" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu2" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri2" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 11 to 12 -->
                            <tr>
                                <td class="auto-style0_MP">11~12</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon3" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue3" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed3" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu3" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri3" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 12 to 13 -->
                            <tr>
                                <td class="auto-style0_MP">12~13</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon4" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue4" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed4" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu4" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri4" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 13 to 14 -->
                            <tr>
                                <td class="auto-style0_MP">13~14</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon5" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue5" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed5" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu5" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri5" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 14 to 15 -->
                            <tr>
                                <td class="auto-style0_MP">14~15</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon6" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue6" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed6" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu6" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri6" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 15 to 16 -->
                            <tr>
                                <td class="auto-style0_MP">15~16</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon7" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue7" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed7" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu7" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri7" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 16 to 17 -->
                            <tr>
                                <td class="auto-style0_MP">16~17</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon8" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue8" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed8" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu8" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri8" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                            <!-- 17 to 18 -->
                            <tr>
                                <td class="auto-style0_MP">17~18</td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="mon9" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="tue9" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="wed9" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="thu9" runat="server" Text=" "></asp:Label>
                                </td>
                                <td class="auto-style1_MP">
                                    <asp:Label ID="fri9" runat="server" Text=" "></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
                <!-- 계정 정보 출력 -->
                <td class="auto-style3_MP">
                    <strong>[ 계정정보 ]</strong>
                    <br /> <br />
                    <asp:Label ID="lblMainID" runat="server" Text="사용자 ID 출력"></asp:Label>
                    <br /> <br />
                    <asp:Label ID="lblStatusMsg" runat="server" Text="사용자 상메 출력"></asp:Label>
                    <br /> <br />
                </td>
            </tr>
            <tr>
                <!-- 추가 -->
                <td class="auto-style3_MP">
                    <asp:TextBox ID="txtPlace" runat="server" CssClass="textbox" Placeholder="장소"></asp:TextBox>
                    <asp:DropDownList ID="ddlDayAdd" runat="server" CssClass="dropdownlist">
                        <asp:ListItem Value="mon">월요일</asp:ListItem>
                        <asp:ListItem Value="tue">화요일</asp:ListItem>
                        <asp:ListItem Value="wed">수요일</asp:ListItem>
                        <asp:ListItem Value="thu">목요일</asp:ListItem>
                        <asp:ListItem Value="fri">금요일</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlTimeAdd" runat="server" CssClass="dropdownlist">
                        <asp:ListItem Value="1">09~10</asp:ListItem>
                        <asp:ListItem Value="2">10~11</asp:ListItem>
                        <asp:ListItem Value="3">11~12</asp:ListItem>
                        <asp:ListItem Value="4">12~13</asp:ListItem>
                        <asp:ListItem Value="5">13~14</asp:ListItem>
                        <asp:ListItem Value="6">14~15</asp:ListItem>
                        <asp:ListItem Value="7">15~16</asp:ListItem>
                        <asp:ListItem Value="8">16~17</asp:ListItem>
                        <asp:ListItem Value="9">17~18</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:Button ID="btnAdd" runat="server" Text="추가" OnClick="btnAdd_Click" CssClass="button" />
                    <br />
                </td>
            </tr>
            <tr>
                <!-- 삭제 -->
                <td class="auto-style3_MP">
                    <asp:DropDownList ID="ddlPlace" runat="server" CssClass="dropdownlist">
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlDayDel" runat="server" CssClass="dropdownlist">
                        <asp:ListItem Value="mon">월요일</asp:ListItem>
                        <asp:ListItem Value="tue">화요일</asp:ListItem>
                        <asp:ListItem Value="wed">수요일</asp:ListItem>
                        <asp:ListItem Value="thu">목요일</asp:ListItem>
                        <asp:ListItem Value="fri">금요일</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlTimeDel" runat="server" CssClass="dropdownlist">
                        <asp:ListItem Value="1">09~10</asp:ListItem>
                        <asp:ListItem Value="2">10~11</asp:ListItem>
                        <asp:ListItem Value="3">11~12</asp:ListItem>
                        <asp:ListItem Value="4">12~13</asp:ListItem>
                        <asp:ListItem Value="5">13~14</asp:ListItem>
                        <asp:ListItem Value="6">14~15</asp:ListItem>
                        <asp:ListItem Value="7">15~16</asp:ListItem>
                        <asp:ListItem Value="8">16~17</asp:ListItem>
                        <asp:ListItem Value="9">17~18</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:Button ID="btnDel" runat="server" Text="삭제" OnClick="btnDel_Click" CssClass="button" />
                    <br />
                </td>
            </tr>
            <tr>
                <!-- 오류 출력 -->
                <td class="auto-style3_MP">
                    <asp:Label ID="STATUS" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <!-- 달력 -->
                <td class="auto-style3_MP">
                    <asp:Calendar ID="Calendar2" align="center" runat ="server" Height="190px" Width="350px" 
                        BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Tenada" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="White" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#005766" />
                        <WeekendDayStyle BackColor="#E0FFDB" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
