<%--
Designer: Michael Cheeseman
Page Name: Week3BasicAdRotator.aspx
Last Edit: April 4, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week3BasicAdRotator.aspx.cs" Inherits="Cheeseman.Week3BasicAdRotator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="heading" runat="server" SkinID="Heading"
	    Text="Simple AdRotator Control to Show Linked Car Images" />
    <br />
    <br /> 
    <asp:Label id="Label1"  runat="server" Font-Size="Medium" 
	    ForeColor="DarkSlateGray" Font-Names="Trebuchet MS">
    Click on the image below to view the item. </asp:Label> 
    <br />
    <br /> 
    <asp:AdRotator id="AdRotatorImages1" runat="server" KeywordFilter="Old Cars" 
        AdvertisementFile="Week3Ads.xml" Height="104px" Width="158px" 
        BorderColor="Red" BorderStyle="Groove" /> 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:AdRotator id="AdRotatorImages2" runat="server" 
        AdvertisementFile="Week3Ads.xml" KeywordFilter="New Cars" 
        Height="104px" Width="158px" BorderColor="Red" BorderStyle="Groove" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:AdRotator id="AdRotatorImages3" runat="server" KeywordFilter="Cool Cars"
        AdvertisementFile="Week3Ads.xml" Height="104px" Width="158px" 	BorderColor="Red" BorderStyle="Groove" /> 
    <br /> 
    <br />  
    <asp:Image id="LargeImage" runat="server" Height="208px" Width="316px" 	BorderColor="Red" BorderStyle="Groove" />
</asp:Content>
