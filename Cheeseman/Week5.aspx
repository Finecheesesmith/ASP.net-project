<%--
Designer: Michael Cheeseman
Page Name: Week5.aspx
Last Edit: April 19, 2014
--%>

<%@ Page Title="Week 5" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week5.aspx.cs" Inherits="Cheeseman.Week5" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Week 5 Home Page"
      SkinID="Heading" /> 
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Text="AJAX Control Toolkit" 
      NavigateUrl="~/Week5AjaxControlToolkit.aspx" />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Text="Week 5 Web Form 7 Example" 
      NavigateUrl="~/Week5WebForm7.aspx" />
    <br />
</asp:Content>