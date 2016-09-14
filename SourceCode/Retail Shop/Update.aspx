﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 788px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <td align="center"><asp:Button ID="buttonslkg" runat="server" Text="LogOut" 
        BorderStyle="None" PostBackUrl="~/AdminHome.aspx" /></td>
    <div align="center" 
        style="font-family:Times New Roman;font-size:x-large;font-style:italic; color:red; background-color:Aqua;" 
        class="style1">Display Items
    
   
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#336666" 
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ItemId" 
        DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" 
        Width="125px">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="ItemId" HeaderText="ItemId" ReadOnly="True" 
                SortExpression="ItemId" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="DateEff" HeaderText="DateEff" 
                SortExpression="DateEff" />
            <asp:BoundField DataField="Store_Id" HeaderText="Store_Id" 
                SortExpression="Store_Id" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:DetailsView>
     </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Retail_ChainDbConnectionString %>" 
        SelectCommand="SELECT * FROM [Item]" UpdateCommand="update Item set [Quantity]=@Quantity,[Price]=@Price,[Description]=@Description,[DateEff]=@DateEff,[Store_Id]=@Store_Id,[State]=@State,[Country]=@Country,[ProductName]=@ProductName where [ItemId]=@ItemId"  DeleteCommand="delete from Item where [ItemId]=@ItemId">
        <UpdateParameters> 
        <asp:Parameter Name="Quantity" />
        <asp:Parameter Name="Price" />
        <asp:Parameter Name="Description" />
        <asp:Parameter Name="DateEff" />
        <asp:Parameter Name="Store_Id" />
        <asp:Parameter Name="State" />
        <asp:Parameter Name="Country" />
        <asp:Parameter Name="ProductName" />

        </UpdateParameters>
        <DeleteParameters>
        <asp:Parameter Name="ItemId" />
        </DeleteParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>