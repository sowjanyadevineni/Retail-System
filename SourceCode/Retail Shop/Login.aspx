<%@ Page Title="" Language="C#" MasterPageFile="~/Retail1.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
    function fun() {

        var i = confirm(" R U SURE U WANT TO DELETE");

        if (i == true) {
            alert("Check It Once ? Ok");
        }
        else {
            alert("Thank U For Checked.");
        }
    }
    
    </script>
   
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 210px;
        }
    </style>
   
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="218px">
        <table class="style2">
            <tr>
                <td style="background-color: #FFCC99">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="200px" Width="200px" ImageUrl="~/images/index.jpg" />
                </td>
  

                <td style="background-color: #FFCC99">
                    <br />
                    <table align="left" border="1" cellpadding="2" cellspacing="2" 
                        style="background-color:Teal;color:Lime; speak-header:always; speak:normal; volume:x-loud;">
                        <tr>
                            <th align="center" class="style9">
                                Login Page:</th>
                        </tr>
                        <tr>
                            <td align="left" class="style9">
                                UserName:</td>
                            <td>
                                <asp:TextBox ID="Username" runat="server" placeholder="Enter User Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style9">
                                PassWord</td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" placeholder="Enter Secure Key" 
                                    TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="requi1" runat="server" ControlToValidate="Password" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                        <td align="left">
                            <asp:RadioButtonList ID="radioblist" runat="server" 
                                RepeatDirection="Horizontal" Visible="False">
                            <asp:ListItem>Employee</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                            </asp:RadioButtonList></td></tr>
                        <tr>
                            <td align="left">
                                <asp:Button ID="Button1" runat="server" BorderStyle="Inset" 
                                    onclick="Button1_Click" Text=" Login" />
                            </td>
                            <td align="left">
                                <asp:Button ID="Button3" runat="server" BorderStyle="Inset" 
                                    onclick="Button3_Click" Text="Admin Login" />
                            </td>
                        </tr>
                    </table>
</td>

            </tr>
        </table>
            </asp:Panel>
            <td></td>
</asp:Content>

