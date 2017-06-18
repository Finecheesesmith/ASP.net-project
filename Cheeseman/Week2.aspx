<%--
Designer: Michael Cheeseman
Page Name: Week2.aspx
Last Edit: April 1, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week2.aspx.cs" Inherits="Cheeseman.Week2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Week 2 Home Page" SkinID="Heading" /><br /><br />

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Week2FeedbackForm.aspx">Feedback Form</asp:HyperLink><br />

    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Week2OrderForm.aspx">Card Maker Order Form</asp:HyperLink><br />

    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Week2LoginForm.aspx">Login Registration Form</asp:HyperLink> <br />

    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Week2Results.aspx">Form Results</asp:HyperLink>
    
</asp:Content>
