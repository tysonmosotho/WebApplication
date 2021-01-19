<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" Runat="Server">
    Register</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-small;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" Runat="Server">
    <strong><span class="auto-style2">Register New User</span><span class="auto-style1"><br />
    <br />
    </span><span class="auto-style3">Who is being registered?</span><span class="auto-style1"><br />
    </span>
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    PersonalNumber<br />
    <asp:TextBox ID="TextBoxPU" runat="server"></asp:TextBox>
    <br />
    <br />
    Title<br />
    <asp:DropDownList ID="DropDownListTitle" runat="server">
        <asp:ListItem>Mr</asp:ListItem>
        <asp:ListItem>Dr</asp:ListItem>
        <asp:ListItem>Mrs</asp:ListItem>
        <asp:ListItem>Miss</asp:ListItem>
        <asp:ListItem>Ms</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    First Name<br />
    <asp:TextBox ID="TextBoxFname" runat="server"></asp:TextBox>
    <br />
    <br />
    Middle Name<br />
    <asp:TextBox ID="TextBoxMname" runat="server"></asp:TextBox>
    <br />
    <br />
    Surname<br />
    <asp:TextBox ID="TextBoxSname" runat="server"></asp:TextBox>
    <br />
    <br />
    Identity Number<br />
    <asp:TextBox ID="TextBoxIDnumber" runat="server"></asp:TextBox>
    <br />
    <br />
    Gender<br />
    <asp:DropDownList ID="DropDownListGender" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Rank<br />
    <asp:DropDownList ID="DropDownListRank" runat="server">
        <asp:ListItem>National Commissioner</asp:ListItem>
        <asp:ListItem>Deputy National Commissioner</asp:ListItem>
        <asp:ListItem>Divisional Commissioner</asp:ListItem>
        <asp:ListItem>Provincial Commissioner</asp:ListItem>
        <asp:ListItem>Assistent Commissioner</asp:ListItem>
        <asp:ListItem>Director</asp:ListItem>
        <asp:ListItem>Senior Superintendent</asp:ListItem>
        <asp:ListItem>Superintendent</asp:ListItem>
        <asp:ListItem>General</asp:ListItem>
        <asp:ListItem>Lieutenant-general</asp:ListItem>
        <asp:ListItem>Major-general</asp:ListItem>
        <asp:ListItem>Brigadier</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Province<br />
    <asp:DropDownList ID="DropDownListProvince" runat="server">
        <asp:ListItem Selected="True">Gauteng</asp:ListItem>
        <asp:ListItem>Limpopo</asp:ListItem>
        <asp:ListItem>Eastern Cape</asp:ListItem>
        <asp:ListItem>Northren Cape</asp:ListItem>
        <asp:ListItem>Free State</asp:ListItem>
        <asp:ListItem>KwaZulu-Natal</asp:ListItem>
        <asp:ListItem>North West</asp:ListItem>
        <asp:ListItem>Westen Cape</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Station<br />
    <asp:DropDownList ID="DropDownListStation" runat="server">
    </asp:DropDownList>
    <br />
    <br />
    Email<br />
    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    Password<br />
    <asp:TextBox ID="TextBoxPassword" runat="server"></asp:TextBox>
    <br />
    <br />
    Confirm Password<br />
    <asp:TextBox ID="TextBoxCpassword" runat="server"></asp:TextBox>
    <br />
    <br />
    Identification Picture<br />
    <br />
    <asp:Image ID="Image1" runat="server" Height="95px" Width="157px" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="TAKE A PICTURE" Width="164px" />
    <br />
    <br />
    <br />
    </strong>
    <asp:Button ID="Button2" runat="server" Text="REGISTER" Width="165px" OnClick="Button2_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;
</asp:Content>

