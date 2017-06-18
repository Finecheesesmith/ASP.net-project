<%--
Designer: Michael Cheeseman
Page Name: Week4ServerVariables.aspx
Last Edit: April 10, 2014
--%>

<%@ Page Title="Using Web Variables" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week4ServerVariables.aspx.cs" Inherits="Cheeseman.Week4ServerVariables" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
	    Text="List all Server Variables" />
    <br />
    <br />
    <br />
    <asp:Label ID="description" runat="server" CssClass="description" 
        Text="The purpose of this is to list all of the server variables.
        You can view a list of values and variables using the code here <br /> http://msdn.microsoft.com/en-us/library/system.web.httprequest.servervariables.aspx" />  
    <div id="Line" class="line">&nbsp;</div>
    <br />  
    <asp:Label ID="Label1" runat="server" Text="" />
    <asp:Label ID="Label2" runat="server" Text="" />
    <br />
    <br /> 
    <asp:Button ID="Button1" runat="server" Text="List all variables!" onclick="Button1_Click" />
</asp:Content>
