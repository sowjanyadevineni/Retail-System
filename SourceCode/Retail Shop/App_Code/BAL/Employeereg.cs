using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using retailshop.dal;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;

/// <summary>
/// Summary description for Employeereg
/// </summary>
public class Employeereg
{
	public Employeereg()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string eid { set; get; }
    public string ssn { set; get; }
    public string name { set; get; }
    public string sex { set; get; }
    public string jt { set; get; }
    public string jd { set; get; }
    public string cs { set; get; }
    public string UN { set; get; }
    public string pwd { set; get; }
    public string an { set; get; }
    public int EmployeeRegistration()
    {
        try
        {
            SqlParameter[] p=new SqlParameter[10];
            p[0] = new SqlParameter("@EmployeeId",eid);
            p[1] = new SqlParameter("@SSN",ssn);
            p[2] = new SqlParameter("@name",name);
            p[3]=new SqlParameter("@sex",sex);
            p[4] = new SqlParameter("@Job_Title",jt);
            p[5] = new SqlParameter("@JoinDate",jd);
            p[6] = new SqlParameter("@Cur_Salary",cs);
            p[7] = new SqlParameter("@UserName",UN);
            p[8] = new SqlParameter("@Password",pwd);
            p[9] = new SqlParameter("@Annual_Salary",an);
            return SqlHelper.ExecuteNonQuery(clsConnection.connectionstring(), CommandType.StoredProcedure, "sp_Employee", p);



        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message.ToString());
        }

    }
}