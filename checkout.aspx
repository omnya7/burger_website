<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="burgerLeaders.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 27%;
        }
        .auto-style1 {
        text-align: left;
                            height: 988px;
                        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style1 {
        text-align: left;
    }
        .auto-style283 {
            width: 327px;
            height: 53px;
            text-align: left;
        }
        .auto-style281 {
            width: 1045px;
            height: 53px;
            text-align: left;
        }
        .auto-style279 {
            width: 327px;
            height: 57px;
            text-align: left;
        }
        .auto-style282 {
            height: 57px;
            width: 1045px;
            text-align: left;
        }
        .auto-style288 {
            width: 634px;
            margin-left: 13px;
        }
        .auto-style289 {
            height: 69px;
        }
        .auto-style290 {
            text-align: center;
            width: 385px;
            height: 69px;
        }
        .auto-style287 {
            text-align: center;
            width: 385px;
        }
        .auto-style292 {
            text-align: center;
            width: 385px;
            font-family: "times New Roman", Times, serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <table class="auto-style1" style="border: thin solid #000000; font-family: 'Times New Roman', Times, serif; color: #000000; font-size: large; font-style: normal; height: 127px;">
        <tr>
            <td class="auto-style283" style="border: thin double #000000">&nbsp;<strong>Order ID&nbsp;</strong></td>
            <td class="auto-style281" style="border: thin double #000000">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style279" style="border: thin double #000000"><strong>Order Date </strong></td>
            <td class="auto-style282" style="border: thin double #000000">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style8 auto-style284" Font-Names="Times New Roman" Height="354px" Width="1174px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="Sno" />
            <asp:BoundField DataField="productid" HeaderText="Product ID" />
            <asp:BoundField DataField="productname" HeaderText="Product Name" />
            <asp:BoundField DataField="price" HeaderText="price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="totalprice" />
            <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="Black" Font-Bold="True" Font-Size="Large" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />
    <table class="auto-style9 auto-style288">
        <tr>
            <td class="auto-style289" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">Type Your Address </td>
            <td class="auto-style290" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11 auto-style285" Height="51px" TextMode="MultiLine" Width="397px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">Phone Number </td>
            <td class="auto-style287" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13" Height="21px" TextMode="Phone" Width="390px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">Country</td>
            <td class="auto-style287" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style13" Height="21px" TextMode="Phone" Width="390px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">City</td>
            <td class="auto-style292" style="border: medium double #000000; ">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style13" Height="21px" TextMode="Phone" Width="390px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="border: medium double #000000; font-family: 'times New Roman', Times, serif;">Email</td>
            <td class="auto-style292" style="border: medium double #000000; ">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style13" Height="21px" TextMode="Phone" Width="390px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <asp:Button ID="btn_Save" runat="server" BackColor="#EEEEEE" BorderStyle="Ridge" CssClass="auto-style16 auto-style286" Font-Names="Times New Roman" Font-Size="Large" ForeColor="Black" Height="75px" OnClick="btn_Save_Click" Text="Place Order " Width="208px" />
</p>
    <p>
        <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top" class="auto-style293">
&nbsp;<img alt="" border="0" src="https://www.paypalobjects.com/ar_EG/i/scr/pixel.gif" width="1" height="1">
</form>

        &nbsp;</p>
<p>
</p>
<p>
</p>
</asp:Content>
