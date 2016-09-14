<%@ Page Title="" Language="C#" MasterPageFile="~/Retail1.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    function fun() {

        var i = confirm(" R U SURE U WANT TO REGISTER");

        if (i == true) {
            alert("Check It Once ? Ok");
        }
    }
    
    </script>
    <asp:ScriptManager ID="scriptma" runat="server"></asp:ScriptManager>
   
    <p style="background-color: #00FFFF">
        <table class="style1">
            <tr>
                <td align="left">
                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="300px" 
                        ImageUrl="~/images/images12.jpg" Width="300px" />
                <td align="left">
                    <table cellpadding="2px" cellspacing="2px" border="1" align="left" style="background-color:Teal; color:Lime;">
    <tr><td>EmployeeId:</td>
    <td><asp:TextBox ID="TextBox11" runat="server" placeholder="Enter Employee Id"></asp:TextBox></td>
    <td>
        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="TextBox11" FilterType="Numbers">
        </cc1:FilteredTextBoxExtender>
    </td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidatorr1" runat="server" 
            ControlToValidate="TextBox11" ErrorMessage="*"></asp:RequiredFieldValidator></td>
    
    </tr>
    <tr><td >SSN:</td>
    <td><asp:TextBox ID="TextBox12" runat="server" placeholder="Enter SSN " ></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox12" ErrorMessage="*"></asp:RequiredFieldValidator></td>
    
    </tr>
    <tr><td>Name:</td>
    <td><asp:TextBox ID="TextBox13" runat="server" placeholder="Enter Employee Name" 
            ontextchanged="TextBox13_TextChanged"></asp:TextBox></td>
    <td style="background-color: #00CCFF"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox13" ErrorMessage="*"></asp:RequiredFieldValidator></td>
    
    </tr>
    <tr><td>Sex:</td>
    <td><asp:RadioButtonList ID="radiobuttonlist1" runat="server">
    <asp:ListItem>Male</asp:ListItem>
    <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
       
       
        </td>
    </tr>
    <tr><td>JobTitle:</td>
    <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Job Title" ></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator></td>
    
    </tr>
    <tr><td>JoinDate:</td>
    <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Join Date" 
            ></asp:TextBox></td>
            
 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator></td> 
    
    </tr>
    <tr><td>Current Salary:</td>
    <td><asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Current Salary" ></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator></td>
    
    </tr>
   

    <tr><td>UserName:</td>
    <td><asp:TextBox ID="TextBox4" runat="server" placeholder="Enter UserName" ></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator></td>
    
    </tr>
    <tr><td>Password:</td>
    <td><asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Secure key" TextMode="Password"></asp:TextBox>
      
    </td>
    <td>
        <cc1:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="TextBox5" MinimumNumericCharacters="3" MinimumSymbolCharacters="2" PreferredPasswordLength="8">
        </cc1:PasswordStrength>
    </td>
   
    
    </tr>
     <tr><td>Annual Salary:</td>
    <td><asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Annual Salary" ></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="*"></asp:RequiredFieldValidator></td>
    
    </tr>

    <tr>
    <td align="left"><asp:Label ID="lblmsg" runat="server"></asp:Label></td>
    
    <td align="center"><asp:Button ID="reg" runat="server" Text="Register" BorderStyle="Inset" 
            OnClientClick="fun();" onclick="reg_Click1"/></td>
    </tr>
   
   
   
   
   
    
    
    
    
    
    </table>
    </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

