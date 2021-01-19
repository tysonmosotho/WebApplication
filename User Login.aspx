<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User Login.aspx.cs" Inherits="User_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <strong>User Login</strong></p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/policelogo.png" Width="137px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        Personal Number:&nbsp;
        <asp:TextBox ID="TextBoxPersonalnum" runat="server" Width="175px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="Please enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBoxPassword" runat="server" Width="172px" style="margin-left: 0px" TextMode="Password" OnTextChanged="TextBoxPassword_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="19px" Text="Login" Width="61px" OnClick="Button1_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <strong>&nbsp;<asp:HyperLink ID="HyperLink1" runat="server"><a href="Register.aspx">Register The New User</a></asp:HyperLink>
        </strong>
    </p>
    <p>
&nbsp;</p>
</asp:Content>

