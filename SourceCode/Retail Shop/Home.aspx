<%@ Page Title="" Language="C#" MasterPageFile="~/Retail1.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 359px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="style1" style="height: 391px">
        <tr>
            <td class="style2" style="background-color: #FFFFCC">
               
                &nbsp;</td>
            <td style="background-color: #FFFFCC">
                
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/images.jpg" 
                    Height="350px" Width="476px" />
                
            </td>
            <td>
            
            </td>
        </tr>
    </table>
   
</asp:Content>

