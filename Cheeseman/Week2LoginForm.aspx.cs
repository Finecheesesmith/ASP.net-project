//Designer: Michael Cheeseman
//Page Name: Week2LoginForm.aspx.cs
//Last Edit: March 28, 2014
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week2Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            string MyQueryString;
            if (txtCode.Text == "Guthrie")
            {
                MyQueryString = "?" +
                "fname=" + HttpUtility.UrlEncode(txtFirstName.Text) + "&" +
                "lname=" + HttpUtility.UrlEncode(txtLastName.Text) + "&" +
                "email=" + HttpUtility.UrlEncode(txtEmailAddress.Text) + "&" +
                "uname=" + HttpUtility.UrlEncode(txtUserName.Text) + "&" +
                "pwrd=" + HttpUtility.UrlEncode(txtPassword.Text);
                Response.Redirect("Week2Results.aspx" + MyQueryString.ToString());
            }
            else
            {
                Label1.Text = "Please fill in all form fields.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.PathAndQuery, true);
        }
    }
}