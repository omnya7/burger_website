<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="burgerLeaders.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style28 {
        width: 83%;
        height: 553px;
    }
    .auto-style29 {
        text-align: center;
        height: 56px;
    }
    .auto-style30 {
        margin-top: 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">
        Google Custom Search
        <script async src="https://cse.google.com/cse.js?cx=325d9d9c963e9d854"></script>
<div class="gcse-search"></div>
    </p>
        <script async = src="https://cse.google.com/cse.js?cx=325d9d9c963e9d854"></script>
    <p class="auto-style3">
        <asp:LinkButton ID="LinkButton3" runat="server">Back to home page</asp:LinkButton>
</p>
<p>
    <br />
    <table align="center" class="auto-style28">
        <tr>
            <td class="auto-style29">Search for burgers
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style2" DataSourceID="SqlDataSource1" EmptyDataText="Please Enter Product Name." Font-Names="Times New Roman" Font-Size="Large" Height="352px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1023px">
                    <Columns>
                        <asp:BoundField DataField="productid" HeaderText="ProductID" SortExpression="ProductID" />
                        <asp:BoundField DataField="productname" HeaderText="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="Price" />
                        <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                            <ControlStyle Height="120px" Width="120px" />
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:burgerLeadersConnectionString3 %>" SelectCommand="SELECT * FROM [productdetail] WHERE ([productname] = @productname)">
         <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="productname" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
</p>
<p>
</p>
</asp:Content>
