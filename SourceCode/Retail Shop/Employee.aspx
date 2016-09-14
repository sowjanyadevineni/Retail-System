﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 127%;
        }
        .style2
        {
            font-family: Stencil;
        }
        .style3
        {
            font-family: "Lucida Calligraphy";
        }
    </style>
</head>
<body bgcolor="White">

    <form id="form1" runat="server">
    <div  style="font-family:Times New Roman; letter-spacing:5px; font-size:xx-large;text-align:center;background-color:Navy; color:#FF0000;  width: 1279px;"><br /><mark>
        <span class="style2">Employee  Page</span></mark><br /><kbd>
        </kbd>&nbsp;<br />
    </div>
    <div align="left" 
        style="background-color: #FFFFFF; color: #FF0000; width: 1273px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Employee.aspx">Home</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;   
        &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/save.aspx">Display</asp:HyperLink>    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink3" 
            runat="server" NavigateUrl="~/salecus.aspx">Sale</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/TransData.aspx">Move</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink5" runat="server" NavigateUrl="~/Login.aspx">LogOut</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
    
    <table class="style1">
        <tr>
            <td style="background-color: #FFFFFF">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="209px" 
                    ImageUrl="~/images/images8.jpg" Width="300px" BackColor="#66FFCC" 
                    BorderStyle="Inset" ImageAlign="Middle" />
               
                </td>
            <td style="background-color: #FFFFFF">
                <br />
                <div style="text-align:left; font-style:oblique;color:Green; font-size:x-large; back "><kbd>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</kbd><span class="style3">Total Product Records</span></div>
             <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="ItemId" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" AllowSorting="True" 
                    AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                    Width="627px" Height="236px" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
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
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Retail_ChainDbConnectionString %>" 
                    SelectCommand="SELECT * FROM [Item]" UpdateCommand="update Item set [Quantity]=@Quantity,[Price]=@Price,[Description]=@Description,[DateEff]=@DateEff,[Store_Id]=@Store_Id,[State]=@State,[Country]=@Country,[ProductName]=@ProductName where [ItemId]=@ItemId" DeleteCommand="delete from Item where [ItemId]=@ItemId">
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
               
                </td>
            
        </tr>
    </table>
    
    </form>
    </body>
</html>
