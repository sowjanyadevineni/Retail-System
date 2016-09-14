<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customersearch.aspx.cs" Inherits="customersearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 769px;
        }
    </style>
</head>
<body bgcolor="#00ff99">
    <form id="form1" runat="server">
       <div align="center"></div>
    <div align="center" style="background-color: #CCFFCC;" class="style1">
    
        
    
        ProductName:<asp:TextBox 
            ID="TextBox1" runat="server" BackColor="#99FF99" 
            BorderStyle="None" Height="22px" BorderColor="#CC3300"></asp:TextBox>
      
       
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="192px">
            <Columns>
                <asp:BoundField DataField="ItemId" HeaderText="ItemId" 
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
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Retail_ChainDbConnectionString %>" 
            SelectCommand="SELECT * FROM [Item] WHERE ([ProductName] = @ProductName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="ProductName" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
