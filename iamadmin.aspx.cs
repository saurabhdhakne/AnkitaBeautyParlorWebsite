using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class iamadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            Response.Redirect("default.aspx");
        }

        Label1.Text = "Hello " + Session["username"].ToString() + "!!" ;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customers.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("itsadmin.aspx");
    }
}