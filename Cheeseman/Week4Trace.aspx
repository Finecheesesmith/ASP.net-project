<%--
Designer: Michael Cheeseman
Page Name: Week4Trace.aspx
Last Edit: April 10, 2014
--%>

<%@ Page Title="Using Trace" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week4Trace.aspx.cs" Inherits="Cheeseman.Week4Trace" %>

<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
    Text="Trace Feature" /> 
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
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server"
    Text = "Link to the Trace.axd log files." Target="_blank"
    NavigateUrl="~/trace.axd">HyperLink</asp:HyperLink>
</asp:Content>
