<%--
Designer: Michael Cheeseman
Page Name: Week4.aspx
Last Edit: April 10, 2014
--%>

<%@ Page Title="Week 4" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week4.aspx.cs" Inherits="Cheeseman.WebForm1" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Week 4 Home Page"
      SkinID="Heading" /> 
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" Text="Using Server Variables" 
      NavigateUrl="~/Week4ServerVariables.aspx" />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
      NavigateUrl="~/Week4Sessions.aspx" Text="Using Session Variables" />
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" 
     NavigateUrl="~/Week4Cookies.aspx" Text="Reading and Writing Cookies" />
    <br />   
    <asp:HyperLink ID="HyperLink3" runat="server" 
      NavigateUrl="~/Week4Trace.aspx" Text="Using Trace" />
    <br />
    <asp:HyperLink ID="HyperLink8" runat="server" 
      NavigateUrl="~/Week4Browsers.aspx" Text="Browser Versions" />
    <br /> 
</asp:Content>
