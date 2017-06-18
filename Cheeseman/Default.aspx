<%--
Designer: Michael Cheeseman
Page Name: Default.aspx
Last Edit: March 28, 2014
--%>

<%@ Page Title="Default" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cheeseman.Default" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="Heading">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="Label1" SkinID="Heading" runat="server" Text="Week 1 Sample Label" />
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p> 
</asp:Content>
