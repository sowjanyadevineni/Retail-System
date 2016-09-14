using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using retailshop.dal;
/// <summary>
/// Summary description for clsConnection
/// </summary>
public class clsConnection
{
	public clsConnection()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static string connectionstring()
    {
         return ConfigurationManager.ConnectionStrings["Retail_ChainDbConnectionString"].ConnectionString;
    }
}