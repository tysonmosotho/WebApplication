<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Scan Screen.aspx.cs" Inherits="Scan_Screen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
    Scan Screen 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    Scan the ID<br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Scan" Width="193px" />
    <br />
    <br />
    <br />
    or search using ID number.....<br />
    <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="SEARCH" Width="195px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;
</asp:Content>

