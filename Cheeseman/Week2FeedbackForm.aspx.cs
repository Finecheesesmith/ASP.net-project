//Designer: Michael Cheeseman
//Page Name: Week2FeedbackForm.aspx.cs
//Last Edit: March 28, 2014
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week2FeedbackForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
                Label10.Text = "";
            }
            else
            {
                Panel1.Visible = false; 
                Panel2.Visible = true;
            }
        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;

            Label10.Text = "<br />Thank you for your comments, "
            + txtFirstName.Text + " " + txtLastName.Text + ". " + "<br /><br />" +

            "<strong>Here is your login information for your records.</strong>" + "<br />" +
            "<em>Username: </em>" + txtUserName.Text + "<br />" +
            "<em>Password: </em>" + txtPassword.Text + "<br /><br />" +

            "<strong>Please review your contact information. </strong> " + "<br />" +
            "You work at a " + dlCompanySize.SelectedValue.ToString() +
            " size organization." + "<br />" +
            "<em>Phone: </em>" + txtPhone.Text + "<br />" +
            "<em>Email Address: </em>" + txtEmailAddress.Text + "<br /><br />" +

            "<strong>Here is a copy of your comments: </strong>" + "<br />" +
            txtComments.Text + "<br /><br />" +

            "Please contact us if you need to update your " +
            "feedback, login or contact information.";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.PathAndQuery, true);
        }
    }
}