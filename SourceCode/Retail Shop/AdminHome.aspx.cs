using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    public void pub()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
    protected void adrotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {
        Label1.Text = "Image is:" + System.IO.Path.GetFileName(e.ImageUrl);
    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
        Label2.Text ="Time:" + DateTime.Now.ToString();
    }
    protected void txtSub_Click(object sender, EventArgs e)
    {
        /*SqlConnection con = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Item values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')", con);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("Record is inserted successfully");
        }
        else
        {
            Response.Write("Sorry Not Inserted");
        }
        pub();
        TextBox1.Focus();*/
        try
        {
            productreg x = new productreg();

            x.itemid = TextBox1.Text.Trim();
            x.quantity = TextBox2.Text.Trim();
            x.price = TextBox3.Text.Trim();
            x.desc = TextBox4.Text.Trim();
            x.date = TextBox5.Text.Trim();
            x.storeid = TextBox6.Text.Trim();
            x.state = TextBox7.Text.Trim();
            x.country = TextBox8.Text.Trim();
            x.productname = TextBox9.Text.Trim();
            int i = x.productregistration();
            if (i > 0)
            {
                lblmsg.Text = "product record is inserted";
            }
            else
            {
                lblmsg.Text = "record is not inserted";
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
    
        
    }
    protected void txtdis_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Item where Itemid='"+TextBox1.Text+"'", con);
        SqlDataReader dr;
        dr=cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                TextBox2.Text = dr[0].ToString();
                TextBox3.Text = dr[1].ToString();
                TextBox4.Text = dr[2].ToString();
                TextBox5.Text = dr[3].ToString();
                TextBox6.Text = dr[4].ToString();
                TextBox7.Text = dr[5].ToString();
                TextBox8.Text = dr[6].ToString();
                TextBox9.Text = dr[7].ToString();
            }
        }
    }
}