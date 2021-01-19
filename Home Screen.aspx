<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home Screen.aspx.cs" Inherits="Home_Screen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
    Home Screen
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <strong style="font-size: medium;">
    <br />
    <br />
    Please Register The Person who brought The ID<br />
    <br />
    <br />
    </strong>
    <span class="auto-style1">
    &nbsp;ID Number:&nbsp;
    </span>
    <strong style="font-size: medium;">
    &nbsp;<asp:TextBox ID="TextBoxIDnum" runat="server" Width="180px" OnTextChanged="TextBox1_TextChanged">Enter ID number</asp:TextBox>
    <br />
    </strong><span class="auto-style1">&nbsp;Name:</span><strong style="font-size: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBoxName" runat="server" Height="17px" Width="180px">Enter Name</asp:TextBox>
    <br />
    </strong><span class="auto-style1">Surname:</span><strong style="font-size: medium;">&nbsp;&nbsp;&nbsp;
    </strong>
    <asp:TextBox ID="TextBoxSurname" runat="server" Width="176px">Enter Surname</asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="24px" Text="Register" Width="95px" OnClick="Button1_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;
</asp:Content>

