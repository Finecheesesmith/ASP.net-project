<%--
Designer: Michael Cheeseman
Page Name: Week2FeedbackForm.aspx
Last Edit: April 1, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week2FeedbackForm.aspx.cs" Inherits="Cheeseman.Week2FeedbackForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">

    <asp:Label SkinID="heading" ID="Label1" runat="server" Text="Feedback Form" />     
    <asp:Panel ID="Panel1" runat="server"> 
        <asp:Label Width="150px" ID="Label2" runat="server" Text="Last Name" />
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />
        <asp:Label Width="150px" ID="Label3" runat="server" Text="First Name" />
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />
        <asp:Label Width="150px" ID="Label4" runat="server" Text="Username" />
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
        <asp:Label Width="150px" ID="Label5" runat="server" Text="Password" />
        <asp:TextBox TextMode="Password" ID="txtPassword" runat="server" /><br />
        <asp:Label Width="150px" ID="Label6" runat="server" Text="Phone" />
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />
        <asp:Label Width="150px" ID="Label7" runat="server" Text="Email Address" />
        <asp:TextBox ID="txtEmailAddress" runat="server" /><br />
        <asp:Label Width="150px" ID="Label8" runat="server" Text="Feedback" />
        <asp:TextBox ID="txtComments" runat="server" Rows="1" TextMode="MultiLine" 
	        Width="401px">Put your comments here.</asp:TextBox><br />
        <asp:Label Width="150px" ID="Label9" runat="server" Text="Company Size" />
        <asp:DropDownList ID="dlCompanySize" runat="server">
            <asp:ListItem Selected="True" Value="small">0-100 employees</asp:ListItem>
            <asp:ListItem Value="medium">101-500 employees</asp:ListItem>
            <asp:ListItem Value="large">501-1000 employees</asp:ListItem>
            <asp:ListItem Value="enterprise">1001-above employees</asp:ListItem>
        </asp:DropDownList><br />
        <asp:Button ID="Submit1" CssClass="btnSubmit" runat="server" 
	        Text="Send your comments" onclick="Submit1_Click" />&nbsp;
        <asp:Button ID="Button2" CssClass="btnSubmit" runat="server" 
	        Text="Clear the form" onclick="Button2_Click" /><br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
    </asp:Panel>

</asp:Content>
