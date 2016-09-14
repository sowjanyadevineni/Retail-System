using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;

/// <summary>
/// Summary description for loginser
/// </summary>
public class loginser
{
	public loginser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
[WebMethod]
    public int checklog(string username,string password)
    {
        login x = new login();
       int i= x.checklogin( username,password);
        return i;
    }
}