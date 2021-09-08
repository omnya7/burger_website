<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup ="true" CodeBehind="signupPage.aspx.cs" Inherits="burgerLeaders.signupPage" %>
<asp:content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <title></title>


        <div>
            Name<asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
        </div>
        <p>
            Password<asp:TextBox ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        Email<asp:TextBox ID="emailtxt" runat="server" TextMode="Email" OnTextChanged="emailtxt_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailtxt" ErrorMessage="invalid email" ForeColor="Red"></asp:RequiredFieldValidator>
        <p>
            <asp:Button ID="RegisterButton" runat="server" OnClick="registerButton_Click1" Text="register" />
        </p>
    </asp:content>

