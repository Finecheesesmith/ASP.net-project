<%--
Designer: Michael Cheeseman
Page Name: Week5WebForm7.aspx
Last Edit: April 19, 2014
--%>

<%@ Page Title="Web Form 7" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week5WebForm7.aspx.cs" Inherits="Cheeseman.Week5WebForm7" %>
<asp:Content ID="HeadingContent" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="Main" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:Label runat="server" ID="Label1" Text="Triggers Demo With Car Colors"
      SkinID="Heading" />
     <br />
     <br />
<%--     Insert a div to act as a container for the panels to ease the float of each div--%>
    <div class="container" style="width:750">
<%--    Insert the left div to hold the user selectable items--%>
        <div class="week5Left">
            <asp:Panel ID="LeftPanel" runat="server" 
                    style="padding-left:10px; " BackColor="White" 
                    BorderStyle="Solid" BorderColor="Black" Width="500px"> 
                <asp:Label ID="Maker" runat="server" 
                    Text="What is your favorite manufacturer?" /> 
                <br />
                <br />
<%--                Dropdown list containing car manufacturers, this item is a trigger--%>
                <asp:Label ID="favMan" runat="server" Text="Manufacturer:"  Width="100px" />&nbsp;
                <asp:DropDownList ID="favManSelection" runat="server" /> 
                <br />
                <br />
                <div style="text-align:center">
                    <asp:Label ID="colorQuestion" runat="server"   
                        Text="What car color is your favorite?" /> 
                    <br />
                    <br />
<%--                    Insert a series of car images to allow the user to select a car color preference--%>
                    <asp:ImageButton ID="dark_Blue_Car" runat="server" Height="75px" 
                        ImageUrl="~/Images/darkbluecar.png" Width="110px" 
                        onclick="darkBlueCar_Click" />
                    <asp:ImageButton ID="red_Car" runat="server" Height="75px" 
                        ImageUrl="~/Images/redcar.png" Width="110px" 
                        onclick="redCar_Click" />
                    <asp:ImageButton ID="pink_Car" runat="server" Height="75px" 
                        ImageUrl="~/Images/pinkcar.png" Width="110px" 
                        onclick="pinkCar_Click" />
                    <asp:ImageButton ID="green_Car" runat="server" Height="75px" 
                        ImageUrl="~/Images/greencar.jpg" Width="110px" 
                        onclick="greenCar_Click" />
                    <br />
                    <asp:ImageButton ID="yellow_Convertable" runat="server" Height="75px" 
                        ImageUrl="~/Images/yellowconvertable.png" Width="110px" 
                        onclick="yellowConvertable_Click" />
                    <asp:ImageButton ID="light_Blue_Car" runat="server" Height="75px" 
                        ImageUrl="~/Images/lightbluecar.png" Width="110px" 
                        onclick="lightBlueCar_Click" />
                    <asp:ImageButton ID="red_White_Car" runat="server" Height="75px" 
                        ImageUrl="~/Images/redwhitecar.jpg" Width="110px" 
                        onclick="redWhiteCar_Click" />
                    <asp:ImageButton ID="yellow_Car" runat="server" Height="75px" 
                        ImageUrl="~/Images/yellowcar.png" Width="110px" 
                        onclick="yellowCar_Click" />
                    <br />
<%--                    Insert a submit button to act as a trigger to process the user selection of the manufacturer dropdown list--%>
                    <div style="text-align:center;">
                        <asp:Button ID="submitBtn" runat="server" Text="Submit" 
                         onclick="submitBtn_Click" />
                        <br />
                    </div>
                </div> 
                <br />
            </asp:Panel>
        </div>
        <div class="week5Right"> 
<%--            Insertion of an UpdatePanel to host the trigger actions, a label will host the selection of the a car maker and an image
            will host the user car color selection--%>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="RightPanel" runat="server" BackColor="White" 
                        BorderColor="Black" BorderStyle="Solid" HorizontalAlign="Center" 
                        Width="295px">
                        <br />
                        <asp:Label ID="manSelection" runat="server" Text=""></asp:Label> 
                        <br />
                        <br />
                        <asp:Image ID="favCarColor" runat="server" BorderColor="Black" 
                            Height="170px" ImageUrl="~/Images/redcar.png" 
                            Width="200px" />
                        <br />
                        <br />
                    </asp:Panel>
                </ContentTemplate>
<%--                declaration of the triggers as specified above--%>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Dark_Blue_Car" />
                    <asp:AsyncPostBackTrigger ControlID="Red_Car" />
                    <asp:AsyncPostBackTrigger ControlID="Pink_Car" />
                    <asp:AsyncPostBackTrigger ControlID="green_Car" />
                    <asp:AsyncPostBackTrigger ControlID="yellow_Convertable" />
                    <asp:AsyncPostBackTrigger ControlID="light_Blue_Car" />
                    <asp:AsyncPostBackTrigger ControlID="red_White_Car" />
                    <asp:AsyncPostBackTrigger ControlID="yellow_Car" />
                    <asp:AsyncPostBackTrigger ControlID="favManSelection" />
                    <asp:AsyncPostBackTrigger ControlID="submitBtn" />
                </Triggers>
             </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
