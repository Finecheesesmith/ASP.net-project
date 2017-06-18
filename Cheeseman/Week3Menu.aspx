<%--
Designer: Michael Cheeseman
Page Name: Week3Menu.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3Menu.aspx.cs" Inherits="Cheeseman.Week3Menu" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading" 
	    Text="Horizontal Menu" /><br /> <br /> <br />
    <asp:Menu ID="NavigationMenu" runat="server" CssClass="menustyle"  
	    EnableViewState="False" Orientation="Horizontal" PathSeparator= "|" 	StaticHoverStyle-BackColor="#FF9999" BackColor="#F7F6F3" 	DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 	ForeColor="#7C6F57" StaticSubMenuIndent="10px" >
    <StaticHoverStyle BackColor="#7C6F57" ForeColor="White"></StaticHoverStyle>
    <StaticMenuItemStyle BackColor="#FFCC66" HorizontalPadding="10px" 
        VerticalPadding="5px" />
    <StaticMenuStyle BackColor="#CCCCFF" />
    <StaticSelectedStyle BackColor="#5D7B9D" />
    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
    <DynamicMenuItemStyle BackColor="#CCFFCC" HorizontalPadding="5px" 
        ItemSpacing="5px" VerticalPadding="5px" Width="200px" />
    <DynamicMenuStyle BackColor="#F7F6F3" />
    <DynamicSelectedStyle BackColor="#5D7B9D" />
    <Items>

        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home"/>
        <asp:MenuItem NavigateUrl="~/About.aspx" Text="About"/> 
        <asp:MenuItem NavigateUrl="~/Week2.aspx" Text="Week 2">
            <asp:MenuItem NavigateUrl="~/Week2FeedbackForm.aspx" 
		        Text="Feedback Form" />
            <asp:MenuItem NavigateUrl="~/Week2OrderForm.aspx" 
		        Text="Card Maker Order Form" />
	        <asp:MenuItem NavigateUrl="~/Week2LoginForm.aspx" 
		        Text="Login Registration Form" />
            <asp:MenuItem NavigateUrl="~/Week2Results.aspx" 
		        Text="Form Results" />
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Week3.aspx" Text="Week 3">
            <asp:MenuItem NavigateUrl="~/Week3RequiredIsValid.aspx" 
	        Text="IsValid and RequiredFieldValidator" /> 
            <asp:MenuItem NavigateUrl="~/Week3ComparePasswords.aspx" 
	        Text="Validate Passwords" />  
            <asp:MenuItem NavigateUrl="~/Week3CompareDates.aspx" 
	        Text="Date Validation" />  
            <asp:MenuItem NavigateUrl="~/Week3RegularExpressions.aspx" 
	        Text="Regular Expressions" />  
            <asp:MenuItem NavigateUrl="~/Week3SelectMultipleDates.aspx" 
	        Text="Select Multiple Dates" />  
	        <asp:MenuItem NavigateUrl="~/Week3InsertStaticContent.aspx" 
	        Text="Insert Static Content in Calendar" /> 
            <asp:MenuItem NavigateUrl="~/Week3BasicAdRotator.aspx" 
	        Text="Basic Ad Rotator" />     
            <asp:MenuItem NavigateUrl="~/Week3SiteMapPath.aspx" Text="SiteMapPath" /> 
            <asp:MenuItem NavigateUrl="~/Week3Menu.aspx" Text="Menu" /> 
            <asp:MenuItem NavigateUrl="~/Week3TreeView.aspx" Text="TreeView" /> 
        </asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Week4.aspx" Text="Week 4"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Week5.aspx" Text="Week 5"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Week6.aspx" Text="Week 6"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Week7.aspx" Text="Week 7"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Week8.aspx" Text="Week 8"></asp:MenuItem> 
    </Items> 
    </asp:Menu>
</asp:Content>
