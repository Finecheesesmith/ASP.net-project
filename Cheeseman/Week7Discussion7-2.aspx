<%--
Designer: Michael Cheeseman
Page Name: Week7Discussion7-2.aspx
Last Edit: May 2, 2014
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week7Discussion7-2.aspx.cs" Inherits="Cheeseman.Week7Discussion7_2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
<asp:Label runat="server" ID="Label1" Text="Generic DetailsView Control" SkinID="Heading" />
<br />
<br />
    <br />
    <br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Cheeseman %>" 
        ProviderName="<%$ ConnectionStrings:Cheeseman.ProviderName %>" 
        SelectCommand="SELECT [ReservingCustomer], [CustPriPhone], [EmailAddress] FROM [CustomerInfo]" >
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="ReservingCustomer" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Vertical" PageSize="10" Width="485px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="ReservingCustomer" HeaderText="ReservingCustomer" InsertVisible="False" 
                ReadOnly="True" SortExpression="ReservingCustomer" />
            <asp:BoundField DataField="CustPriPhone" HeaderText="CustPriPhone" 
                SortExpression="CustPriPhone" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Cheeseman %>" 
        DeleteCommand="DELETE FROM [CustomerInfo] WHERE [ReservingCustomer] = ?" 
        InsertCommand="INSERT INTO [CustomerInfo] ([ReservingCustomer], [CustPriPhone], [CustAltPhone], [EmailAddress]) VALUES (?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:Cheeseman.ProviderName %>" 
        SelectCommand="SELECT * FROM [CustomerInfo] WHERE ([ReservingCustomer] = ?)" 
        UpdateCommand="UPDATE [CustomerInfo] SET [ReservingCustomer] = ?, [CustPriPhone] = ?, [CustAltPhone] = ?, [EmailAddress] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ReservingCustomer" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ReservingCustomer" Type="String" />
            <asp:Parameter Name="CustPriPhone" Type="String" />
            <asp:Parameter Name="CustAltPhone" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ReservingCustomer" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ReservingCustomer" Type="String" />
            <asp:Parameter Name="CustPriPhone" Type="String" />
            <asp:Parameter Name="CustAltPhone" Type="String" />
            <asp:Parameter Name="EmailAddress" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ReservingCustomer" 
        DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" 
        Height="50px" Width="493px">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <FieldHeaderStyle Width="200px" />
        <Fields>
            <asp:BoundField DataField="ReservingCustomer" HeaderText="ReservingCustomer" 
                SortExpression="ReservingCustomer" />
            <asp:BoundField DataField="CustPriPhone" HeaderText="CustPriPhone" InsertVisible="False" 
                ReadOnly="True" SortExpression="CustPriPhone" />
            <asp:BoundField DataField="CustAltPhone" HeaderText="CustAltPhone" 
                SortExpression="CustAltPhone" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                SortExpression="EmailAddress" />
           <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <br />
    <br />

</asp:Content>
