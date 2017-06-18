<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Database.aspx.cs" Inherits="Cheeseman.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="Label1" SkinID="Heading" runat="server" Text="PostGres database grid" />
    <br />
<br />
    <br />
    <br />
<%--GridView that will use the DataSet established in the code behind the page--%>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="true"  CellPadding="6" 
    enablesortingandpagingcallbacks="False" xmlns:asp="#unknown">
        <HeaderStyle BackColor="DarkBlue" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="LightBlue" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="LightGray" ForeColor="Black"/>
        <AlternatingRowStyle BackColor="LightBlue" ForeColor="Black"/>
    </asp:GridView>
</asp:Content>
