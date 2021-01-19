<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login Admin.aspx.cs" Inherits="Login_Admin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
    Login Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <span class="auto-style1"><strong>Login As Admin<br />
    </strong></span>
    <br />
    <asp:TextBox ID="TextBox1" runat="server">username</asp:TextBox>
    <br />
    <asp:TextBox ID="TextBox2" runat="server">password</asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="LOGIN" Width="175px" Height="21px" />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server">Forgot your password?</asp:HyperLink>
    <br />
    <br />
    <br />
&nbsp;
</asp:Content>

