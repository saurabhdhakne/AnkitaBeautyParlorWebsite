using Microsoft.AspNet.Identity;
using System;
using System.Linq;
using System.Web.UI;
using Parlor;

using System.Collections.Generic;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Account_Register : Page
{
    protected void CreateUser_Click(object sender, EventArgs e)
    {
        var manager = new UserManager();
        var user = new ApplicationUser() { UserName = UserName.Text };
        IdentityResult result = manager.Create(user, Password.Text);


        if (mobile.Text == "" || txtName.Text == "")
        {
            Response.Write("Field cannot be empty");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            conn.Open();


            SqlCommand cmd = new SqlCommand("UPDATE AspNetUsers" + " SET mobile='" + mobile.Text + "',name='" + txtName.Text + "' WHERE UserName='" + UserName.Text + "' ", conn);
            cmd.ExecuteNonQuery();
        }

        if (result.Succeeded)
        {
            IdentityHelper.SignIn(manager, user, isPersistent: false);
            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        }
        else
        {
            ErrorMessage.Text = result.Errors.FirstOrDefault();
        }
    }
}