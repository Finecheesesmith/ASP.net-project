<%--
Designer: Michael Cheeseman
Page Name: Week4Cookies.aspx
Last Edit: April 10, 2014
--%>

<%@ Page Title="Reading and Writing Cookies" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week4Cookies.aspx.cs" Inherits="Cheeseman.Week4Cookies" %>

<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
	    Text="Reading and Writing Cookies" /> 
    <br />
    <br />  
    <asp:Label ID="lblCookie" runat="server" Text="" />
    <br />
    <br /> 
    <asp:Label ID="lblWelcome" runat="server" Text="" />
    <br />
    <br /> 
    <asp:Label ID="Label1" runat="server" Width="100px" 
	    Text="Username: " />&nbsp;&nbsp; 
    <asp:TextBox ID="txtName" runat="server" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Width="100px" 
	    Text="Password" />&nbsp;&nbsp;
    <asp:TextBox ID="txtPass" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Create Login Cookies" 
    	    onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Button2" runat="server" 
	    Text="Delete My Cookies!" onclick="Button2_Click" /> 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="Button3" runat="server" 
	    Text="Refresh the page!" onclick="Button3_Click"  />
</asp:Content>
