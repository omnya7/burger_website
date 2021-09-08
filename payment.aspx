<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="burgerLeaders.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 546px;
            text-align: center;
        }
        .auto-style30 {
            width: 384px;
            height: 508px;
        }
        .auto-style292 {
            width: 279px;
            height: 78px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3">
    <br />
    CONFIRM YOUR ORDER</h1>
<table class="auto-style30" align="center">
    <tr>
        <td colspan="2" class="auto-style3">
            Payment Methods</td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style3">
            <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="4FTUV8FT8EQJG">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" class="auto-style292">
<img alt="" border="0" src="https://www.paypalobjects.com/ar_EG/i/scr/pixel.gif" width="1" height="1">
</form>

<div class="auto-style3">
            </div>
</td>
    </tr>
    <tr>
        <td class="auto-style29">
            <asp:Button ID="Button1" runat="server" Height="55px" OnClick="Button1_Click" Text="Confirm Order" Width="130px" />
        </td>
      
    </tr>
</table>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
