<%--
Designer: Michael Cheeseman
Page Name: Week3ComparePasswords.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3ComparePasswords.aspx.cs" Inherits="Cheeseman.Week3ComparePasswords" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="heading"
	    Text="Validating Passwords" /> <br /> <br />
    <asp:Label ID="Label1" Text="Enter Password" Runat="server" />  
    <asp:TextBox ID="TextBox1" Runat="server" 
        TextMode="Password"></asp:TextBox> &nbsp;
    <asp:CompareValidator ID="CompareValidator1" 
        Runat="server" ErrorMessage="Passwords do not match!" 
        ControlToValidate="TextBox2" 
        ControlToCompare="TextBox1" /><br /> <br />
    <asp:Label ID="Label2" Text="Retype Your Password" Runat="server" />  
    <br /> 
    <br />
    <asp:TextBox ID="TextBox2" Runat="server" TextMode="Password" /><br /><br />
    <asp:Button ID="Button1" OnClick="Button1_Click" 
        Runat="server" Text="Login" /><br /><br />
    <asp:Label ID="lblMessage" Runat="server" /> 
</asp:Content>
