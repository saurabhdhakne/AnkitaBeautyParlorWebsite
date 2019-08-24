using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "")
        {
            Response.Redirect("Default.aspx");
        }

        myUser.Text = Session["username"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("username");
        Response.Redirect("itsamdin.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("iamadmin.aspx");
    }
}