<%--
Designer: Michael Cheeseman
Page Name: Week3SelectMultipleDates.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3SelectMultipleDates.aspx.cs" Inherits="Cheeseman.Week3SelectMultipleDates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
	    Text="Selecting Multiple Dates" />
    <br />
    <br />   
    <asp:Calendar ID="CalendarMultiple" runat="server" BackColor="White" 
	    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="233px" 
	    onselectionchanged="CalendarMultiple_SelectionChanged" 
	    SelectionMode="DayWeek" Width="436px" SelectMonthText="Select" 
    	BorderStyle="Outset" SelectWeekText="Choose">
    <DayHeaderStyle BackColor="#FF9933" ForeColor="#336666" Height="1px" />
    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SelectorStyle BackColor="#FFFFCC" ForeColor="#336666" />
    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
      Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
	    <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>  
    <br /> 
    <br />
    <asp:Label ID="Label1" runat="server" 
	    Text="Select your vacation days this month." /> 
</asp:Content>
