<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"  CodeBehind="ourMenu.aspx.cs" Inherits="burgerLeaders.ourMenu" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style21 {
        width: 40%;
            height: 387px;
        }
    .auto-style23 {}
    .auto-style1 {}
    .auto-style25 {
        width: 222px;
    }
        .auto-style28 {
            width: 222px;
            height: 215px;
        }
        .auto-style29 {
            width: 222px;
        }
        </style>
</asp:Content>

<asp:content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:burgerLeadersConnectionString3 %>" SelectCommand="SELECT * FROM [productdetail]"></asp:SqlDataSource>
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" Width="1469px">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                Sno
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("sno") %>'></asp:Label>
                <table class="auto-style21">
                    <tr>
                        <td class="auto-style25">Product ID
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("productid") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">Product Name
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("productname") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">Price
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style28">
                            <asp:ImageButton ID="ImageButton2" runat="server" Height="211px" ImageUrl='<%# Eval("productimage") %>' Width="533px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style25">Quantity
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue="<%# 1 %>">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style29">
                            <asp:ImageButton ID="ImageButton3" runat="server" Height="63px" ImageUrl="~/images/addtocart.png" PostBackUrl="~/addtocart.aspx" Width="355px" OnClick="ImageButton3_Click" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>

       </asp:content>
