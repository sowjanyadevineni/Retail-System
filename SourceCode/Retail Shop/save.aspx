<%@ Page Language="C#" AutoEventWireup="true" CodeFile="save.aspx.cs" Inherits="save" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Engravers MT";
        }
        .style2
        {
            text-decoration: underline;
        }
        .style3
        {
            text-decoration: underline;
            background-color: #66FF99;
        }
        .style4
        {
            background-color: #66FF99;
        }
        .style5
        {
            height: 22px;
        }
        .style6
        {
            height: 437px;
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #FFFFCC; text-align:center;"> <span class="style1">
        <span class="style2"><em><strong><span class="style4">Display Information</span></strong></em></span><em><strong><br 
            class="style3" />
        </strong></em></span><br />
    
        <table cellpadding="2px" cellspacing="2px" border="1" align="center" 
            style="background-color:Teal;color:Orange; " class="style6">
                    <tr>
                    <td align="left">ItemId:</td>
                    <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Item Id"></asp:TextBox></td>
                   </tr>
                    <tr>
                    <td align="left">Quantity:</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Quantity"></asp:TextBox></td>
                   </tr>
                    <tr>
                    <td align="left">Price:</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Price"></asp:TextBox></td>
                   </tr>
                    <tr>
                    <td align="left">Description:</td>
                    <td>&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Description" TextMode="MultiLine" ></asp:TextBox></td>
                   </tr>
                    <tr>
                    <td align="left">Date:</td>
                    <td><asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Date"></asp:TextBox></td>
                   </tr>

                    <tr>
                    <td align="left"> Retail Store:</td>
                    <td><asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Retail Store"></asp:TextBox></td>
                   </tr>
                    <tr>
                    <td align="left">State:</td>
                    <td><asp:TextBox ID="TextBox7" runat="server" placeholder="Enter State"></asp:TextBox></td>
                   </tr>
                    <tr>
                    <td align="left">Country:</td>
                    <td><asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Country"></asp:TextBox></td>
                   </tr>
                   <tr>
                    <td align="left">ProductName:</td>
                    <td><asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Product Name:"></asp:TextBox></td>
                   </tr>

                   <tr>
                  <td align="center" class="style5">
                           
                               <asp:Button ID="txtdis" runat="server" BorderStyle="Inset" Text="ViewItem" 
                                   onclick="txtdis_Click" />
                           </td>
                           <td align="center" class="style5"><asp:Button ID="Buttadd" runat="server" Text="ItemSale" 
                                   BorderStyle="Inset" onclick="Buttadd_Click" />
                    
                                   </td>
                       
                   </tr>
                    
                    </table>
    
    </div>
    </form>
              <td align="center"> <asp:Label ID="lblmsg" runat="server"></asp:Label></td>
</body>
</html>
