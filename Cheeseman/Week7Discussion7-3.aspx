<%--
Designer: Michael Cheeseman
Page Name: Week7Discussion7-3.aspx
Last Edit: May 3, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week7Discussion7-3.aspx.cs" Inherits="Cheeseman.Week7Discussion7_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
<asp:Label runat="server" ID="Label1" Text="DataSet Usage" SkinID="Heading" />
<br />
<br />
<%--GridView that will use the DataSet established in the code behind the page--%>
    <asp:GridView ID="GridView1" runat="server" CellPadding="6" >
        <HeaderStyle BackColor="DarkBlue" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="LightBlue" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="LightGray" ForeColor="Black"/>
        <AlternatingRowStyle BackColor="LightBlue" ForeColor="Black"/>
    </asp:GridView>

</asp:Content>
