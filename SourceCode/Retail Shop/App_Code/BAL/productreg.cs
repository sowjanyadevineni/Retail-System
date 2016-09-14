using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using retailshop.dal;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for productreg
/// </summary>
public class productreg
{
    public productreg()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string itemid { set; get; }
    public string quantity { set; get; }
    public string price { set; get; }
    public string desc { set; get; }
    public string date { set; get; }
    public string storeid { set; get; }
    public string state { set; get; }
    public string country { set; get; }
    public string productname { set; get; }
    public int productregistration()
    {
        try
        {

            SqlParameter[] p = new SqlParameter[9];
            p[0] = new SqlParameter("@ItemId", itemid);
            p[1] = new SqlParameter("@Quantity", quantity);
            p[2] = new SqlParameter("@Price", price);
            p[3] = new SqlParameter("@Description", desc);
            p[4] = new SqlParameter("@DateEff", date);
            p[5] = new SqlParameter("@Store_Id", storeid);
            p[6] = new SqlParameter("@State", state);
            p[7] = new SqlParameter("@Country", country);
            p[8] = new SqlParameter("@ProductName", productname);
            return SqlHelper.ExecuteNonQuery(clsConnection.connectionstring(), CommandType.StoredProcedure, "product_reg", p);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }
    }
}