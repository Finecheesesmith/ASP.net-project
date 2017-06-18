<%--
Designer: Michael Cheeseman
Page Name: Week2OrderForm.aspx
Last Edit: April 1, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week2OrderForm.aspx.cs" Inherits="Cheeseman.Week2OrderForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
    <style type="text/css">
        body { margin: 0; padding: 0; } 
        .container { width: 930px;  margin: 0 auto; overflow: hidden; }  
        .leftside { float: left; width: 460px; padding-bottom: 10px; }
        .rightside { padding: 0px 0; width: 400px; float: left; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label ID="Directions" runat="server" SkinID="heading" 
	Text="Simple Greeting Card Creator" /> <br /><br /> 
<asp:Label ID="lblMessage" runat="server" SkinID="heading" 
	Text="Please fill out the order form." /> <br /><br />

<div class="container">
    <div class="leftside">
        <asp:Panel ID="LeftPanel" runat="server" 
            style="padding-left:10px; " BackColor="#FDF4D0" 
            BorderStyle="Outset" BorderColor="#660066"><br />
        <asp:Label ID="lblCardHeading" runat="server" Text="Card Heading" 	Width="130px" />&nbsp;&nbsp;
        <asp:TextBox ID="txtCardHeading" runat="server" Width="220px" />&nbsp;&nbsp;<br /><br />
        <asp:Label ID="lblCardMessage" runat="server" Text="Card Message" 	Width="130px" />&nbsp;&nbsp; <br />
        <asp:Label ID="Placeholder" runat="server" Text=" " Width="130px" />&nbsp;&nbsp;
        <asp:TextBox ID="txtCardMessage" runat="server" TextMode="MultiLine" 
	        Height="82px" Width="220px" /><br /><br />
        <asp:Label ID="lblNumberCards" runat="server" Text="Number of Cards" 	Width="130px" />&nbsp;&nbsp;
        <asp:TextBox ID="txtNumberCards" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblCardSize" runat="server" Text="Card Size and Price" 
            Width="130px" />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value=".20" Text="3*5 cards cost $.20 each" />
            <asp:ListItem Value=".50" Text="4*6 cards cost $.50 each" />
            <asp:ListItem Value=".75" Text="8*10 cards cost $.75 each" />
            <asp:ListItem Value="1.00" Text="12*24 cards cost $1.00 each" />
        </asp:RadioButtonList><br /><br />
        <asp:Label ID="lblCardImage" runat="server" Text="Select an Image" 
            Width="130px" />&nbsp;&nbsp;
        <asp:DropDownList ID="DDLCardImage" runat="server">
            <asp:ListItem Text="Dark Blue Car" Value="darkbluecar.png" />
            <asp:ListItem Text="Green Car" Value="greencar.jpg" />
            <asp:ListItem Text="Light Blue Car" Value="lightbluecar.jpg" />
            <asp:ListItem Text="Pink Car" Value="pinkcar.jpg" />
            <asp:ListItem Text="Red Car" Value="redcar.png" />
            <asp:ListItem Text="Red Car in a Bow" Value="redcarpresent.jpg" />
            <asp:ListItem Text="Old Red and White Car" 
	            Value="redwhitecar.jpg" />
            <asp:ListItem Text="Yellow Car" Value="yellowcar.png" />
            <asp:ListItem Text="Yellow Convertable" 	Value="yellowconvertable.png" />
        </asp:DropDownList><br /><br />
        <asp:Label ID="lblFontSize" runat="server" Text="Font Size" 	Width="130px" />&nbsp;&nbsp;
        <asp:DropDownList ID="DDLFontSize" runat="server" Height="22px">
            <asp:ListItem Text="Small" Value="10" /> 
            <asp:ListItem Text="Medium" Value="12" /> 
            <asp:ListItem Text="Large" Value="16" /> 
            <asp:ListItem Text="Very large" Value="24" /> 
        </asp:DropDownList><br />
        <asp:Label ID="lblBackColors" runat="server" Text="Background Color" 
	        Width="130px" />&nbsp;&nbsp;
        <asp:DropDownList ID="DDLBackColors" runat="server" /><br /> 
        <asp:Label ID="lblFontColors" runat="server" Text="Font Color" 	Width="130px" />&nbsp;&nbsp;
        <asp:DropDownList ID="DDLFontColors" runat="server" /><br />
        <asp:Label ID="lblFontFamily" runat="server" Text="Font Family" 	Width="130px" />&nbsp;&nbsp;
        <asp:DropDownList ID="DDLFontFamily" runat="server" /><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Create My Card!" 
                onclick="btnSubmit_Click" />
        <br />
        <br />
  </asp:Panel>
  </div>
    <div class="rightside" style="padding-left:30px; background-color: White;" > 
        <asp:Panel ID="RightPanel" runat="server" HorizontalAlign="Center" 
            BorderStyle="Outset" BorderColor="#660066" BackColor="#FFE2C6" ><br />
        <asp:Label ID="labelCardHeading" runat="server" 
	        Text="Card Heading"></asp:Label><br /><br />
        <asp:Label ID="labelCardMessage" runat="server" 
	        Text="Card Message"></asp:Label><br /><br />
        <asp:Image ID="imgCard" runat="server" Height="209px" Width="316px" 
            BorderColor="Red" BorderStyle="Groove" 
            ImageUrl="~/Images/darkbluecar.png" /><%--Blue Car image on behalf of http://www.clker.com/cliparts/1/3/f/6/11970920461654850943Harreck_Blue_Car.svg.hi.png--%>
            <br />
            <br />
            <br />  
        </asp:Panel>
    </div>
</div>
</asp:Content>
