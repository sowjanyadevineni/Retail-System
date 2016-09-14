using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TransData : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["to"] = TextBox4.Text;

    }
   public void pub()
    {
        SqlConnection cn = new SqlConnection("Data Source=NEW-PC\\SQLEXPRESS;Initial Catalog=Retail_ChainDb;Integrated Security=True");
        cn.Open();
      //  SqlCommand cmd = new SqlCommand(" delete  from Item where ItemId='" + TextBox1.Text + "'", cn);
        SqlCommand cmd = new SqlCommand(" update Item set Store_Id='" + TextBox4.Text + "' where Store_Id='" + TextBox3.Text + "' and ItemId='"+TextBox1.Text+"' ", cn);


        cmd.ExecuteNonQuery();
        cn.Close();
    }
    public void sub()
    {
      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        cn.Open();
        SqlCommand cmd = new SqlCommand("insert into Transtore values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')",cn);
        cmd.ExecuteNonQuery();
        Response.Write("record is Transmitted");

        cn.Close();

        pub();
    
        
      

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand("select ProductName,Store_Id from Item where ItemId='" + TextBox1.Text + "'", cn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr[0].ToString();
            TextBox3.Text = dr[1].ToString();
        }
        cn.Close();
  
    }
}