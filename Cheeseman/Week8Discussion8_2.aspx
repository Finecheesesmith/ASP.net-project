<%--
Designer: Michael Cheeseman
Page Name: Week8Discussion8_2.aspx
Last Edit: May 7, 2014
--%>

<%@ Page Title="Web Services" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week8Discussion8_2.aspx.cs" Inherits="Cheeseman.Week8Discussion8_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Web Services"
      SkinID="Heading" /> 
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter your name: " />
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="NameTextBox" runat="server" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Are you graduating: " />
    <br />
    <asp:RadioButtonList ID="GradRadioList" runat="server">
        <asp:ListItem Text="Yes" />
        <asp:ListItem Text="No" />
    </asp:RadioButtonList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit!" 
    onclick="Button1_Click" /> 
    <br />
    <br />
    <asp:Label ID="ReplyLbl" runat="server" />
    <br />
    <br />
</asp:Content>
