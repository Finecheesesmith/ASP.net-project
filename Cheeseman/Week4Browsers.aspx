<%--
Designer: Michael Cheeseman
Page Name: Week4Browser.aspx
Last Edit: April 10, 2014
--%>

<%@ Page Title="Browser Versions" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week4Browsers.aspx.cs" Inherits="Cheeseman.Week4Browsers" %>

<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
	    Text="Browser Detection" /> 
    <br />
    <br />  
    <asp:Label ID="Label1" runat="server" Text="" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Go" onclick="Button1_Click" />
</asp:Content>
