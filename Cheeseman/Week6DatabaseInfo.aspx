<%--
Designer: Michael Cheeseman
Page Name: Week6DatabaseInfo.aspx
Last Edit: April 23, 2014
--%>

<%@ Page Title="Database Information" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week6DatabaseInfo.aspx.cs" Inherits="Cheeseman.Week6DatabaseInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
<asp:Label runat="server" ID="Label1" Text="Database Information" SkinID="Heading" />
        <br />
        <br />
<%--	    Database will automatically be accessed at page load.  No user actions are required--%>
        <p>
            Below is the information for the my week 1 database:
        </p>
<%--        Displays the database file information--%>
        <asp:label id="lblDBConn" runat="server" ForeColor="Blue"> </asp:label>
        <br />
        <p>
            Below is the result of a SQL command statement asking for the restaurant in the database and the food served:
        </p>
<%--        Displays the results of the command sending the query and the reader processing--%>
        <asp:label id="lblDBComm" runat="server" ForeColor="Blue"> </asp:label>
</asp:Content>
