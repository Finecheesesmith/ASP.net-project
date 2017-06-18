<%--
Designer: Michael Cheeseman
Page Name: Week8.aspx
Last Edit: May 7, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week8.aspx.cs" Inherits="Cheeseman.Week8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Week 8 Home Page"
      SkinID="Heading" /> 
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Text="Web Services Hello" 
      NavigateUrl="~/Week8Discussion8_2.aspx" />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Text="Grid View" 
      NavigateUrl="~/Week8Discussion8-3.aspx" />
</asp:Content>
