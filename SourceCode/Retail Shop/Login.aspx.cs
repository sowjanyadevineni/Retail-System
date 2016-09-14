using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using retailshop.dal;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select username,password from Employee where username='" + Username.Text + "' and password='" + Password.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Server.Transfer("Employee.aspx");
        }
        else
        {
            Response.Write("Invalid UserName/Password");
        }
        con.Close();
    }



    /* try
     {
         if (radioblist.SelectedItem.Text == "Employee")
         {

             loginser x = new loginser();

             int i = x.checklog(Username.Text.Trim(), Password.Text.Trim());
             if (i != 1)
             {
                 Response.Redirect("NewUser.aspx");
             }
             else
             {
                 Response.Write("invalid");
             }


         }
         else
         {

             loginser y = new loginser();
             int j = y.checklog(Username.Text.Trim(), Password.Text.Trim());
             if (j == 1)
             {
                 Response.Redirect("AdminHome.aspx");
             }
             else
             {
                 Response.Write("invalid");
             }
         }
     }
     catch (Exception ex)
     {
         ex.Message.ToString();
     }*/
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Username.Text == "Admin" && Password.Text == "Admin")
        {
            Response.Redirect("AdminHome.aspx");
        }
    }
}