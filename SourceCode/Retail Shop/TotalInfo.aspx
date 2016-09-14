<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TotalInfo.aspx.cs" Inherits="TotalInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            height: 612px;
        }
        .style4
        {
            font-family: Batang;
            font-size: large;
            text-decoration: underline;
        }
        .style5
        {
            color: #990000;
            background-color: #FF99CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="background-color: #FFFFCC" class="style3" >
        <span class="style4"><strong><em><span class="style5">Total Products </span></em></strong></span><br />
            
  
   

  
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
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
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            </tr>
  
   
        </table>
        
  
   
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Retail_ChainDbConnectionString %>" 
        SelectCommand="SELECT * FROM [Item]"></asp:SqlDataSource>
    </form>
</body>
</html>
