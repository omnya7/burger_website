<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="burgerLeaders.loginPage" %>



    <asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style28 {
        width: 66%;
        height: 233px;
        margin-left: 313px;
    }
    .auto-style29 {
        width: 59%;
        font-size: xx-large;
            height: 488px;
            margin-left: 88px;
            margin-right: 0px;
        }
    .auto-style30 {
        height: 23px;
        text-align: center;
    }
        .auto-style31 {
            width: 1222px;
        }
        .auto-style32 {
            width: 100px;
            height: 131px;
        }
        .auto-style33 {
            width: 1222px;
            text-align: center;
        }
        .auto-style34 {
            font-size: smaller;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div>
            <table class="auto-style29" align="center">
                <tr>
                    <td style="border-width: 1px" class="auto-style13">
                        <asp:Label ID="Label1" runat="server" Text="Username" CssClass="auto-style30"></asp:Label>
                    </td>
                    <td style="border-width: 1px" class="auto-style31">
                        <asp:TextBox ID="usernameTextBox" runat="server" Height="33px" Width="470px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border-width: 1px" class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text="Password" CssClass="auto-style30"></asp:Label>
                    </td>
                    <td style="border-width: 1px" class="auto-style31">
                        <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password" Height="31px" Width="475px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border-width: 1px" class="auto-style20">&nbsp;</td>
                    <td style="border-width: 1px" class="auto-style31">
                        <h2 class="auto-style3">
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Font-Names="Colonna MT" style="font-size: larger" Text="capatcha"></asp:Label>
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td style="border-width: 1px" class="auto-style28">Please enter the letters and numbers to proceed</td>
                    <td style="border-width: 1px" class="auto-style33">
                        <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="491px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <br />
                        I&#39;m not a robot!<br />
                        <img alt="ري كابتشا - ويكيبيديا" class="auto-style32" src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/RecaptchaLogo.svg/220px-RecaptchaLogo.svg.png" /></td>
                </tr>
                <tr>
                    <td style="border-width: 1px" class="auto-style34" colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Height="55px" Width="102px" />
                        <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/loginPage.aspx">You do not have account! . Create Now ? </asp:HyperLink>
                        <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="errorName" runat="server"></asp:Label>
   </asp:content>

