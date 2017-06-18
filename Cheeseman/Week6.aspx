<%--
Designer: Michael Cheeseman
Page Name: Week6.aspx
Last Edit: April 24, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week6.aspx.cs" Inherits="Cheeseman.Week6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Week 6 Home Page"
      SkinID="Heading" /> 
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Text="Database Connection Info" 
      NavigateUrl="~/Week6DatabaseInfo.aspx" />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Text="Grid View" 
      NavigateUrl="~/Week6Discussion6_3.aspx" />
    <br />
</asp:Content>
