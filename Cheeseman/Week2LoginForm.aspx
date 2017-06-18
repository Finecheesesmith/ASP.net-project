<%--
Designer: Michael Cheeseman
Page Name: Week2LoginForm.aspx
Last Edit: April 1, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week2LoginForm.aspx.cs" Inherits="Cheeseman.Week2Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label SkinID="heading" ID="Label1" runat="server" Text="Member Registration Form" />
    <br />
    <br />
    <asp:Label Width="150px" ID="Label2" runat="server" Text="Last Name" />
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />
    <asp:Label Width="150px" ID="Label3" runat="server" Text="First Name" />
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br /> 
    <asp:Label Width="150px" ID="Label7" runat="server" Text="Email Address" />
    <asp:TextBox ID="txtEmailAddress" runat="server" Height="16px" 
	    Width="275px" /><br /><br /> 
    <asp:Label Width="150px" ID="Label4" runat="server" Text="Username" />
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
    <asp:Label Width="150px" ID="Label5" runat="server" Text="Password" />
    <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" /><br />
    <asp:Label Width="150px" ID="Label6" runat="server" Text="Code Word" />
    <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>  
    <br />  
    <br />
    <asp:Button ID="Submit1" CssClass="btnSubmit" runat="server" 
	    onclick="Submit1_Click" Text="Register" />&nbsp;
    <asp:Button 	ID="Button2" CssClass="btnSubmit" runat="server" 
	    Text="Clear the form" onclick="Button2_Click" />  
    <br />  
    <br />
</asp:Content>
