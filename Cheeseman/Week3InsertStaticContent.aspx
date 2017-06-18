<%--
Designer: Michael Cheeseman
Page Name: Week3InsertStaticContent.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3InsertStaticContent.aspx.cs" Inherits="Cheeseman.Week3InsertStaticContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
	    Text="Insert Static Content into a Calendar" />  
    <br />
    <br /> 
    <asp:Label ID="Label1" runat="server" Text="Click on a date!" /><br /><br /> 
    <asp:Calendar ID="CalendarWithData" runat="server" BackColor="White" 
	    BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Width="505px" 
	    Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="338px" 	
        NextPrevFormat="ShortMonth" ondayrender="CalendarWithData_DayRender" 
	    onselectionchanged="CalendarWithData_SelectionChanged" >
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
            Height="8pt" />
        <DayStyle BackColor="#CCCCCC" Height="70px" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
            Font-Size="12pt" ForeColor="White" Height="12pt" />
        <TodayDayStyle BackColor="#999999" ForeColor="White" />
    </asp:Calendar>
</asp:Content>
