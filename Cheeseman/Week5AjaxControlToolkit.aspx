<%--
Designer: Michael Cheeseman
Page Name: Week5AjaxControlToolkit.aspx
Last Edit: April 16, 2014
--%>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit"%>

<%@ Page Title="AJAX Control Toolkit" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week5AjaxControlToolkit.aspx.cs" Inherits="Cheeseman.Week5AjaxControlToolkit" %>

<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <%--    Establish the script manager, without this is was recieving an error on the page noting a missing reference--%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>    
    
    <asp:Label ID="Label1" SkinID="Heading" runat="server" Text="Week 5 AJAX Control Toolkit - CalanderExtender" />
    <br />
    <br />
    <%--    Label with the instructions to select a date, this label will later be populated with the date selected or told to select a date if
    submitted with no date selected--%>
    <asp:Label ID="Label2" runat="server" Text="Please select a date:" />    
    <br />
    <br />
    <%--    This text box will house the date selected from the user--%>
    <asp:TextBox ID="DateSelection" runat="server" />
    <%--    establishing the image to be selected by the user to open a calendar to select a date--%>
    <asp:Image ID="CalendarImage" runat="server" ImageUrl="Images/calen.png" />
    
    <%--    declaring the CalendarExtender used in conjunction with the DateTextBox and CalenderImage
    Upon selection of the CalendarImage, the user will be presented with a calendar
    Upon selection of a date the DateTextBox will be populated--%>
    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"
        TargetControlID="DateSelection" 
        PopupButtonID="CalendarImage">
    </ajaxToolkit:CalendarExtender>
    <br />
    <br />
    
    <%--    Submit button to submit the date that has been selected--%>
    <asp:Button ID="Submit1" CssClass="btnSubmit" runat="server" 
	        Text="Submit Date" onclick="Submit1_Click" />
    <br />

</asp:Content>
