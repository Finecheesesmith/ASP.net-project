<%--
Designer: Michael Cheeseman
Page Name: Week4Sessions.aspx
Last Edit: April 10, 2014
--%>

<%@ Page Title="Session Variables" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week4Sessions.aspx.cs" Inherits="Cheeseman.Week4Sessions" %>

<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading" 
		Text="Sessions" /> 
    <br />
    <br />  
    <asp:Label ID="Label1" runat="server" Text="" />
    <br />
    <br /> 
    <asp:TextBox ID="TextBox1" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Go!" 
            onclick="Button1_Click" />
</asp:Content>
