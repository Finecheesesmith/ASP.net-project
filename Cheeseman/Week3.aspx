<%--
Designer: Michael Cheeseman
Page Name: Week3.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3.aspx.cs" Inherits="Cheeseman.Week3" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Week 3 Home Page" SkinID="Heading" />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Week3RequiredIsValid.aspx">Validation</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Week3ComparePasswords.aspx">Compare Passwords</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Week3CompareDates.aspx">Compare Dates</asp:HyperLink> 
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Week3RegularExpressions.aspx">Regular Expressions</asp:HyperLink> 
    <br />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Week3SelectMultipleDates.aspx">Select Multiple Dates</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Week3InsertStaticContent.aspx">Insert Static Content</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Week3BasicAdRotator.aspx">Basic Ad Rotator</asp:HyperLink> 
    <br />
    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Week3SiteMapPath.aspx">Site Map</asp:HyperLink> 
    <br />
    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Week3Menu.aspx">Menu</asp:HyperLink> 
    <br />
    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Week3TreeView.aspx">Tree View</asp:HyperLink>
</asp:Content>
