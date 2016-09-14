<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salecus.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .style1
        {
            font-size: large;
            font-family: "Arial Narrow";
            text-decoration: underline;
            color: #990000;
        }
        .style2
        {
            height: 657px;
        }
    </style>
</head>
<body bgcolor="aqua">
    <form id="form1" runat="server">
     <asp:Button ID="buttonsw" runat="server" Text="LogOut" BorderStyle="None" 
        PostBackUrl="~/Employee.aspx" Height="23px" style="text-align: right" 
        Width="54px" />
    <br />
    <br />
   
    <div align="center" class="style2" style="background-color: #66FFFF"> 
        <span class="style1"><strong><em>Sales Information</em></strong></span>
    
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" DataSourceID="SqlDataSource1" Height="50px" Width="125px" 
                onpageindexchanging="DetailsView1_PageIndexChanging" AllowPaging="True">
                <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <Fields>
                    <asp:BoundField DataField="ItemId" HeaderText="ItemId" 
                        SortExpression="ItemId" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                </Fields>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
            </asp:DetailsView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Retail_ChainDbConnectionString %>" 
            SelectCommand="SELECT * FROM [Sales_Info]"></asp:SqlDataSource>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    <br />
    <table >
    <tr>
     
    <td align="center" style="color:Maroon; font-style:italic;">
    </table>
   
    </form>
</body>
</html>
