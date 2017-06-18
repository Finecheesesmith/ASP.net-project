<%--
Designer: Michael Cheeseman
Page Name: Week7.aspx
Last Edit: May 2, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week7.aspx.cs" Inherits="Cheeseman.Week7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Week 7 Home Page"
      SkinID="Heading" /> 
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Text="Database Connection Info" 
      NavigateUrl="~/Week7Discussion7-2.aspx" />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Text="Grid View" 
      NavigateUrl="~/Week7Discussion7-3.aspx" />
</asp:Content>
