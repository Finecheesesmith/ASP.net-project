<%--
Designer: Michael Cheeseman
Page Name: Week6Discussion6_3.aspx
Last Edit: April 24, 2014
--%>

<%@ Page Title="Grid View" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Week6Discussion6_3.aspx.cs" Inherits="Cheeseman.Week6Discussion6_3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Heading" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <asp:Label runat="server" ID="Label1" Text="Grid View Example" SkinID="Heading" />
    <br />
    <br />

<%--    Setting the SQLDataSource object to connect to the Cheeseman1.accdb database.
    Establishes the delete, insert, select and update commands to be used in the Grid View.--%>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:Cheeseman %>"
        DeleteCommand="DELETE FROM [CustomerInfo] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [CustomerInfo] ([ID], [ReservingCustomer], [CustPriPhone], [CustAltPhone], [EmailAddress]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        ProviderName="<%$ ConnectionStrings:Cheeseman.ProviderName %>" 
        SelectCommand="SELECT [ID], [ReservingCustomer] AS Reserving_Customer, [CustPriPhone] AS Cust_Pri_Phone, [CustAltPhone] AS Cust_Alt_Phone, [EmailAddress] AS Email_Address FROM [CustomerInfo] ORDER BY [ReservingCustomer]"
        UpdateCommand="UPDATE [ReservingCustomer] SET [CustPriPhone] = ?, [CustAltPhone] = ?, [EmailAddress] = ? WHERE [ID] = ?">
        
<%--        Establishes the ID delete paremeter, setting the type to and int value versus text and string values--%>
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        
<%--        Establishing the Insert parameters for the ID, ReservingCustomer, CustPriPhone, CustAltPhone and EmailAddress fields of the Cheeseman1.accdb
        database CustomerInfo table--%>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Reserving_Customer" Type="String" />
            <asp:Parameter Name="Cust_Pri_Phone" Type="String" />
            <asp:Parameter Name="Cust_Alt_Phone" Type="String" />
            <asp:Parameter Name="Email_Address" Type="String" />
        </InsertParameters>
    
<%--        Establishing the update parameters for all fields as in the Insert parameters--%>    
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="Int32" />            
            <asp:Parameter Name="Reserving_Customer" Type="String" />
            <asp:Parameter Name="Cust_Pri_Phone" Type="String" />
            <asp:Parameter Name="Cust_Alt_Phone" Type="String" />
            <asp:Parameter Name="Email_Address" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />

<%--    Setting up the Grid View object using the previosly established parameters in the above SQLDataSource object--%>
<%--    Outlining the details in the gridview such as borders and colors--%>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Vertical" AllowPaging="True" 
        AllowSorting="True">
<%--        Establishing the colors and styles of the rows and columns to include the data fields from the Cheeseman1 database--%>
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Reserving_Customer" HeaderText="Reserving_Customer" 
                SortExpression="Reserving_Customer" />
            <asp:BoundField DataField="Cust_Pri_Phone" HeaderText="Cust_Pri_Phone" 
                SortExpression="Cust_Pri_Phone" />
            <asp:BoundField DataField="Cust_Alt_Phone" HeaderText="Cust_Alt_Phone" 
                SortExpression="Cust_Alt_Phone" />
            <asp:BoundField DataField="Email_Address" HeaderText="Email_Address" 
                SortExpression="Email_Address" />
       </Columns>
<%--       Setting the header infomation as well as other row and selection styles to differentiate a column selection in the header--%>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#7BA7E1 " Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CEDEF4" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BorderStyle="Solid" BorderColor="Black" BackColor="#CEDEF4" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <br />
</asp:Content>
