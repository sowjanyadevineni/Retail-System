<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        .style1
        {
            width: 97%;
            height: 552px;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            font-size: x-large;
            font-family: "Times New Roman", Times, serif;
        }

        .style4
        {
            text-align: center;
            height: 34px;
        }

        .style5
        {
            width: 313px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="3">
                    <strong><em><span 
                        class="style3">&nbsp;</span><asp:ImageButton ID="ImageButton1" 
                        runat="server" ImageUrl="~/images/images7.jpg" Height="60px" Width="800px" />
                    </em></strong></td>
            </tr>
            <tr>
                <td class="style4" colspan="3" align="left"
                    style="background-image: url('images/images1.jpg'); background-color: #00FFFF; color: #FF0000; border-style: inset">
                    <asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="None" 
                        NavigateUrl="~/SalesInfo.aspx" ForeColor="#333300">SalesInformation</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" BorderStyle="None" 
                        NavigateUrl="~/Update.aspx" ForeColor="#663300">Update Information</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                        &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" 
                        NavigateUrl="~/TotalInfo.aspx" ForeColor="#663300">Total Information</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/NewUser.aspx" 
                        ForeColor="#663300">Add Employee</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/updatemp.aspx" 
                        ForeColor="#663300">Update Employee</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Login.aspx" 
                        ForeColor="#663300">SignOut</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style5"><table style="width: 432px; height: 493px;">
                <tr bgcolor="#FFCC99">
                <td align="left"><asp:ScriptManager ID="scriptmanager" runat="server"></asp:ScriptManager>
               
                
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                    <asp:AdRotator ID="adrotator1" runat="server" onadcreated="adrotator1_AdCreated" 
                            height="200px" Width="200px" AdvertisementFile="~/XMLFile.xml"/><br />
                    <asp:AdRotator ID="adrotator2" runat="server" onadcreated="adrotator1_AdCreated" 
                            height="200px" Width="200px" AdvertisementFile="~/XMLFile.xml"/><br />
                        <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    
                    </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                        </Triggers>
                     
                    
                    </asp:UpdatePanel>
                </td>
                <asp:Timer ID="timer1" runat="server" Interval="1000"></asp:Timer>
                </tr>
                
                </table>
                    
            
                <td bgcolor="#FFCC99"> <table cellpadding="2px" cellspacing="2px" border="1" align="center" style="background-color:Teal;color:Orange; ">
                    <tr>
                    <td align="left">ItemId:</td>
                    <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Item Id"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                    <td align="left">Quantity:</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Quantity"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                    <td align="left">Price:</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Price"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                    <td align="left">Description:</td>
                    <td><asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Description" TextMode="MultiLine" ></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                    <td align="left">Date:</td>
                    <td><asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Date"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>

                    <tr>
                    <td align="left"> Retail Store:</td>
                    <td><asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Retail Store"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                    <td align="left">State:</td>
                    <td><asp:TextBox ID="TextBox7" runat="server" placeholder="Enter State"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>
                    <tr>
                    <td align="left">Country:</td>
                    <td><asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Country"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>
                   <tr>
                    <td align="left">ProductName:</td>
                    <td><asp:TextBox ID="TextBox9" runat="server" placeholder="Enter Product Name:"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                   </tr>

                   <tr>
                   <td align="center"><asp:Button ID="txtSub" runat="server" Text="AddNewItem" 
                           BorderStyle="Inset" OnClientClick="alert('are u sure you want to Add Items')" 
                           onclick="txtSub_Click" /></td>
                       
                        
                           <td align="center" bgcolor="White">
                           <asp:Label ID="lblmsg" runat="server"></asp:Label><br />
                           </td>
                       
                   </tr>
                    
                    </table>&nbsp;&nbsp;
                   &nbsp;<td bgcolor="#FFCC66">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    </ContentTemplate>
                    <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer2" EventName="Tick"/>
                    </Triggers>
                    </asp:UpdatePanel>
                    <asp:Timer ID="Timer2" runat="server" Interval="60" ontick="Timer2_Tick"></asp:Timer>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
        </table>
                    

    
    
    </div>
    <table>
    <tr>
    <td align="center" style="color:Maroon;">&nbsp;</td>
    </tr>
    </table>
   
    <br />

    
    </form>
</body>
</html>
