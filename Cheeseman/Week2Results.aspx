<%--
Designer: Michael Cheeseman
Page Name: Week2Results.aspx
Last Edit: April 1, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week2Results.aspx.cs" Inherits="Cheeseman.Week2Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label SkinID="heading" ID="lblHeading" runat="server" 
	    Text="Member Home Page" /><br /><br />
    <asp:Label runat="server" ID="lblMessage" Text="" />
</asp:Content>
