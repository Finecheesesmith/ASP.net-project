<%--
Designer: Michael Cheeseman
Page Name: Week3RequiredIsValid.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3RequiredIsValid.aspx.cs" Inherits="Cheeseman.Week3RequiredIsValid" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="NainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading" Text="Determining if the page is valid" />
    <br />
    <br />  
    <asp:TextBox ID="TextBox1" Runat="server" /> 
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Runat="server" 	ControlToValidate="TextBox1" ErrorMessage="Please enter a value!" 	Text="Required!" Font-Bold="True" Font-Size="Larger" 	ForeColor="#FF3300"/> <br /><br />  
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
	    ErrorMessage="Enter a valid value!" ControlToValidate="TextBox1"  /> 
    <br />
    <br /> 
    <asp:Button ID="Button1" Runat="server" Text="Submit" 
	    OnClick="Button1_Click" /> <br /> <br />
    <asp:Label ID="lblMessage" Runat="server" /> 
</asp:Content>
