<%--
Designer: Michael Cheeseman
Page Name: Week3TreeView.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3TreeView.aspx.cs" Inherits="Cheeseman.Week3TreeView" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
        Text="Alternative TreeView - XML" /> 
    <br /> 
    <br />  
    <asp:Label ID="Label1" Runat="Server" Text="Select your products then click the button." />
    <br /> 
    <br /> 
    <asp:TreeView ID="TreeView2" runat="server" DataSourceID="XmlDataSource1" 	ShowCheckBoxes="Leaf">
        <DataBindings>
            <asp:TreeNodeBinding runat="server" DataMember="Store" 
		    Text="Go Shopping" />
            <asp:TreeNodeBinding runat="server" DataMember="Products" 				TextField="Category" />
            <asp:TreeNodeBinding runat="server" DataMember="Options" 					TextField="Value" />
        </DataBindings>
    </asp:TreeView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Week3Store.xml">
    </asp:XmlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" Runat="server" Text="Submit Order" onclick="Button1_Click" />
</asp:Content>
