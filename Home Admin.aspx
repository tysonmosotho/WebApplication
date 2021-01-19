<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home Admin.aspx.cs" Inherits="Home_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
    Home Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <strong><span class="auto-style1">Welcome Admin</span></strong><br />
    <br />
    <asp:Button ID="AddBtn" runat="server" Text="ADD" Width="216px" OnClick="Button1_Click" />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="UPDATE" Width="216px" OnClick="Button2_Click" />
    <br />
    <br />
    <asp:Button ID="Button3" runat="server" Text="DELETE" Width="215px" OnClick="Button3_Click" />
    <br />
    <br />
    <br />
&nbsp;
</asp:Content>

