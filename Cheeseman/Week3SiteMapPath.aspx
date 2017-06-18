<%--
Designer: Michael Cheeseman
Page Name: Week3SiteMapPath.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3SiteMapPath.aspx.cs" Inherits="Cheeseman.Week3SiteMapPath" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
	    Text="SiteMapPath Styles" />
    <br />
    <br /> 
    <asp:SiteMapPath ID="SiteMapPath2" runat="server" Font-Names="Verdana"  
        Font-Size="12pt" PathDirection="RootToCurrent" 
        PathSeparator=" | " ParentLevelsDisplayed="-1">
        <CurrentNodeStyle ForeColor="#333333" />
        <NodeStyle Font-Bold="True" ForeColor="#990000" />
        <PathSeparatorStyle Font-Bold="True" ForeColor="#FF9933" />
        <RootNodeStyle Font-Bold="True"  ForeColor="#FF8000" />
    </asp:SiteMapPath> 
</asp:Content>
