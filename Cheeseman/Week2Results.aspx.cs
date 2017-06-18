//Designer: Michael Cheeseman
//Page Name: Week2Results.aspx.cs
//Last Edit: March 28, 2014
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week2Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.HasKeys())
            {
                lblMessage.Text = "You have successfully registered." +
                "Keep your login information for your records." + "<br /><br />" +
                "First Name: " + Request.QueryString["fname"] + "<br />" +
                "Last Name: " + Request.QueryString["lname"] + "<br />" +
                "Email Address: " + Request.QueryString["email"] + "<br />" +
                "Username: " + Request.QueryString["uname"] + "<br />" +
                "Password: " + Request.QueryString["pwrd"];
            }
            else
            {
                Server.Transfer("~/Week2LoginForm.aspx", false);
            } 

        }
    }
}