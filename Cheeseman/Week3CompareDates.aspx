<%--
Designer: Michael Cheeseman
Page Name: Week3CompareDates.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3CompareDates.aspx.cs" Inherits="Cheeseman.Week3CompareDates" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading" Text="Validating Dates" /> 
    <br />
    <br /> 
    <asp:Label ID="Label1" runat="server" Text="Your Arrival Date:" />&nbsp; 
    <asp:TextBox ID="TextBox1" runat="server" />&nbsp; 
    <br /> 
    <br />
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
	    Text="You must only select a date within the next two weeks." 
	    ControlToValidate="TextBox1" Type="Date" ForeColor="DarkBlue" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Select your arrival date" />
    <br />
    <br />
    <asp:Calendar ID="Calendar1" runat="server" 
	    OnSelectionChanged="Calendar1_SelectionChanged" /><br />
    <asp:Button ID="Button1" runat="server" Text="Select a Date" OnClick="Button1_Click" />
    <br /> 

</asp:Content>
