<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TransData.aspx.cs" Inherits="TransData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            background-color: #808080;
        }
        .style3
        {
            margin-left: 0px;
            font-family: "Lucida Calligraphy";
        }
        .style4
        {
            font-family: "Lucida Calligraphy";
        }
        .style5
        {
            background-color: #808080;
            font-family: "Lucida Calligraphy";
        }
    </style>
</head>
<body style="height: 1063px; background-color:Silver;">
    <form id="form1" runat="server" >
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2" 
                    
                    style="border-style: groove; border-width: thin; text-align: center; font-family: 'Times New Roman', Times, serif; color: #FF0000; font-size: xx-large; background-color: #C0C0C0; table-layout: fixed; background-image: url('images/5.jpg');">
                  <mark> <kbd> <span class="style4">Data Transmition</span></kbd></mark></td>
            </tr>
            <tr>
                <td style="color: #CC3300; " 
                    class="style4">
                    ItemId</td>
                <td style="color: #FF0000; ">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #CC3300; " 
                    class="style4">
                    Quantity</td>
                <td style="color: #FF0000; ">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #CC3300; " 
                    class="style4">
                    FromStoreId</td>
                <td style="color: #FF0000; ">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #CC3300; " 
                    class="style4">
                    ToStoreId</td>
                <td style="color: #FF0000; ">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    
    <span class="style2" style="background-color: #C0C0C0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;</span><asp:Button ID="Button1" runat="server" 
        Text="Send" BackColor="White" 
            BorderStyle="Inset" onclick="Button1_Click" Width="95px" 
        CssClass="style5" ForeColor="#990000" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="Inset" 
            onclick="Button2_Click" Text="View" CssClass="style3" Width="105px" 
        ForeColor="#CC3300" /><br /><br /><br />
   <div align="center"><span class="style4"><mark>Total Information</mark></span><asp:GridView 
           ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None" CssClass="style4" BorderStyle="Double">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ItemId" HeaderText="ItemId" 
                SortExpression="ItemId" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="From_Store_Id" HeaderText="From_Store_Id" 
                SortExpression="From_Store_Id" />
            <asp:BoundField DataField="To_Store_Id" HeaderText="To_Store_Id" 
                SortExpression="To_Store_Id" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView></div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Retail_ChainDbConnectionString %>" 
        SelectCommand="SELECT * FROM [Transtore]"></asp:SqlDataSource>
   
    </form>
</body>
</html>
