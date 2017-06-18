<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Database.aspx.cs" Inherits="Cheeseman.WebForm2" %>
    
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="Label1" SkinID="Heading" runat="server" Text="PostGres database grid" />
     <br />
     <br />
        <asp:TextBox ID="TextBox1" Runat="server" 
        TextMode="Password"></asp:TextBox>;
    <br />
    <br />
    <br />
    <br />
    <asp:DropDownList ID="DropDownList" runat="server" AutoPostBack="true" DataTextField="Text" DataValueField="Value" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged"
        AppendDataBoundItems="true">
    </asp:DropDownList>
    <%--GridView that will use the DataSet established in the code behind the page--%>
    <asp:gridview id="GridView1" runat="server" allowpaging="true" cellpadding="6" enablesortingandpagingcallbacks="False"
        xmlns:asp="#unknown">
        <headerstyle backcolor="DarkBlue" font-bold="True" forecolor="White" />
        <pagerstyle backcolor="LightBlue" forecolor="Black" horizontalalign="Right" />
        <rowstyle backcolor="LightGray" forecolor="Black" />
        <alternatingrowstyle backcolor="LightBlue" forecolor="Black" />
    </asp:gridview>
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
</asp:Content>
