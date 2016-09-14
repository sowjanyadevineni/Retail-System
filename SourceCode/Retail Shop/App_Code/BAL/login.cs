using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using retailshop.dal;
/// <summary>
/// Summary description for login
/// </summary>
public class login
{
	public login()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int checklogin( string username,string password)
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@UserName",username);
        p[1] = new SqlParameter("@Password",password);
        p[2] = new SqlParameter("@EmployeeId",SqlDbType.Char);
        p[2].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(clsConnection.connectionstring(), CommandType.StoredProcedure, "sp_login", p);
        if (p[2].Value == null)
        {
            return 1;
        }
        else
        {
            return Convert.ToChar(p[2].Value);
        }
        
    }
}