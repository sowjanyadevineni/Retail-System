using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void reg_Click(object sender, EventArgs e)
    {

    }
    public void pub()
    {
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        radiobuttonlist1.SelectedValue = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";

    }
    protected void reg_Click1(object sender, EventArgs e)
    {
      /* SqlConnection con = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Employee values('"+TextBox11.Text+"','"+TextBox12.Text+"','"+TextBox13.Text+"','"+radiobuttonlist1.SelectedValue+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"')",con);
        int i=cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("Record is inserted successfully");
        }
        else
        {
            Response.Write("Sorry Not Inserted");
        }
        pub();
        TextBox11.Focus();*/
        
       try
        {
            Employeereg x = new Employeereg( );
            x.eid = TextBox11.Text;
            x.ssn = TextBox12.Text;
            x.name = TextBox13.Text;
            x.sex = radiobuttonlist1.SelectedValue;
            x.jt = TextBox1.Text;
            x.jd = TextBox2.Text;
            x.cs = TextBox3.Text;
            x.UN = TextBox4.Text;
            x.pwd = TextBox5.Text;
            x.an = TextBox6.Text;
            int i = x.EmployeeRegistration();
            if (i > 0)
            {

                lblmsg.Text = "Record is inserted";
            }
            else
            {
                lblmsg.Text = "not inserted";
            }
            pub();
        }
        catch (Exception ex)
        {
      lblmsg.Text= ex.Message.ToString();
        }
}
protected void  TextBox2_TextChanged(object sender, EventArgs e)
{

}
protected void TextBox13_TextChanged(object sender, EventArgs e)
{

}
}