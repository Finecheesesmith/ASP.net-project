

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3RegularExpressions.aspx.cs" Inherits="Cheeseman.Week3RegularExpressions" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading" Text="Validating Data with Comparison and Expressions" /> 
    <br /> 
    <br />
    <asp:Label ID="Label2" runat="server" Text="Please enter your email address:" 
        Width="300px" />
    <asp:TextBox ID="TextBox1" runat="server" />
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 	runat="server" ControlToValidate="TextBox1"  ForeColor="#FF6600" 
	    ErrorMessage="Please enter the email address as Name@company.com"  
	    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /> 
    <br />
    <asp:Label ID="Label3" runat="server" Width="300px" 
	    Text="Please enter your phone number: " />
    <asp:TextBox ID="TextBox2" runat="server" />
    <br /> 
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 	runat="server" ControlToValidate="TextBox2" ForeColor="#FF6600" 
	    ErrorMessage="Enter your phone number (999) 999-9999" 	ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" /><br /> 
    <asp:Label ID="Label4" runat="server"  Width="300px" 
	    Text="Please enter your zip code: " />
    <asp:TextBox ID="TextBox3" runat="server" />
    <br /> 
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" 	runat="server" ControlToValidate="TextBox3" ForeColor="#FF5050" 
	    ErrorMessage="Enter a zip code" ValidationExpression="\d{5}(-\d{4})?" />
    <br />
    <asp:Label ID="Label5" runat="server"  Width="300px" Text="Please enter your SSN: " />
    <asp:TextBox ID="TextBox4" runat="server" /><br /> 
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 	runat="server" ControlToValidate="TextBox4" ForeColor="#FF5050" 
	    ErrorMessage="Enter your SSN" ValidationExpression="\d{3}-\d{2}-\d{4}"/>
    <br />
    <br />  
    <asp:Button ID="Button1" runat="server" Text="Submit Form" OnClick="Button1_Click" />
    <br />
    <br />  
    <asp:ValidationSummary ID="ValidationSummary1" Runat="server" 
	    HeaderText="You received the following errors:">
    </asp:ValidationSummary>

</asp:Content>
