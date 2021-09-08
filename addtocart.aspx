<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addtocart.aspx.cs" Inherits="burgerLeaders.addtocart" %>
<asp:content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




        <div>
            <div class="auto-style3">
                <h1>Shopping Cart</h1>
&nbsp;<asp:Label ID="Label6" runat="server"></asp:Label>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
                &nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Signout</asp:LinkButton>
            </div>
            <table class="auto-style1">
                <tr>
                    
                        <asp:Label ID="nameLabel" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="loginLinkButton" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="signoutLinkButton" runat="server" OnClick="LinkButton2_Click">signout</asp:LinkButton>
&nbsp; You Have
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;In Your Cart
                        <asp:LinkButton ID="showcartLinkButton" runat="server" >Show Cart</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
        <h3>
            You have Added the following Products in your cart</h3>
        <p>
            <span dir="ltr" style="left: 112.5px; top: 390.957px; font-size: 23.3px; font-family: sans-serif; transform: scaleX(0.935105);">You have
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;<span dir="ltr" style="left: 280.933px; top: 390.957px; font-size: 23.3px; font-family: sans-serif; transform: scaleX(0.932944);">in your cart&nbsp;&nbsp; </span></span><span dir="ltr" style="font-size: 23.3px; font-family: sans-serif; transform: scaleX(0.935105);"><span dir="ltr" style="font-size: 23.3px; font-family: sans-serif; transform: scaleX(0.932944);">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="ourMenu.aspx">continue shopping</asp:HyperLink>
            </span></span>
        </p>
        <p class="auto-style3">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="16px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ShowFooter="True" Width="69px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="SNO" />
                    <asp:BoundField DataField="productid" HeaderText="Product ID" />
                    <asp:BoundField DataField="productname" HeaderText="Product Name" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity ">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:ImageField DataImageUrlField="productimage" HeaderText=" Product Image">
                    </asp:ImageField>
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </p>
        <asp:LinkButton ID="LinkButton1" runat="server" >ClearCart</asp:LinkButton>
  
       <br />
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Checkout" />
<br />
  
       </asp:content>
