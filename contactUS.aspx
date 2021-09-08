<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contactUS.aspx.cs" Inherits="burgerLeaders.contactUS" %>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">

        .auto-style278 {
            width: 57%;
            height: 367px;
            margin-left: 291px;
        }
        .auto-style287 {
            font-size: xx-large;
        }
        .auto-style279 {
            height: 46px;
            font-size: medium;
        }
        .auto-style289 {
            width: 334px;
            height: 46px;
            font-size: xx-large;
        }
        .auto-style282 {
            height: 46px;
            }
        .auto-style280 {
            width: 334px;
            height: 166px;
            font-size: xx-large;
        }
        .auto-style281 {
            height: 166px;
            }
        </style>
</asp:Content>


<asp:content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="auto-style3">
            <br />
            <br />
            <br />
            <br />
            <table class="auto-style278" style="font-family: 'times New Roman', Times, serif; border-style: double; border-width: 0px;">
                <tr>
                    <td class="auto-style287" colspan="2" style="border-color: #000000; border-style: solid;"><strong>Contact Us</strong></td>
                </tr>
                <tr>
                    <td class="auto-style279" colspan="2" style="border-color: #000000; border-style: solid;">Contact us by this e-mail:
                        <asp:Label ID="Label3" runat="server" Font-Underline="True" ForeColor="#0000CC" Text="BurgerLeaders@outlook.com"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style289" style="border-color: #000000; border-style: solid;">Your E-mail</td>
                    <td class="auto-style282" style="border-color: #000000; border-style: solid;">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style286" Height="87px" Width="534px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style280" style="border-color: #000000; border-style: solid;">Message</td>
                    <td class="auto-style281" style="border-color: #000000; border-style: solid;">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style284" Height="153px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="527px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2" style="border-color: #000000; border-style: solid;">
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style288" Font-Names="Times New Roman" Height="38px" OnClick="Button1_Click" OnClientClick="true" Text="Send" Width="79px" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
        </div>
 
 </asp:content>
