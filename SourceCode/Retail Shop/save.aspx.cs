using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class save : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {



    }
    protected void txtdis_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand("select Quantity,Price,Description,DateEff,Store_Id,State,Country,ProductName from Item where ItemId='" + TextBox1.Text + "'", cn);
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
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
    public void pub()
    {
        SqlConnection cn = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand("delete from Item where ItemId='"+TextBox1.Text+"'",cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
    protected void Buttadd_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into Sales_Info values('"+TextBox1.Text+"','"+TextBox2.Text+"')",cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        pub();
        lblmsg.Text = "Record is successfully Solds";
    }
}