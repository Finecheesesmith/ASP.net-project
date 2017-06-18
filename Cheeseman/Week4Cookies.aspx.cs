using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week4Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblCookie.Text = "HTTP_COOKIE: " + Request.ServerVariables["HTTP_COOKIE"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((Page.IsPostBack) && (txtPass.Text == "Guthrie"))
            {

                HttpCookie cookie = Request.Cookies["Preferences"];

                if (cookie == null)
                {
                    cookie = new HttpCookie("Preferences");
                    cookie["Name"] = txtName.Text;
                    cookie["Pass"] = txtPass.Text;
                    cookie.Expires = DateTime.Now.AddYears(1);
                    Response.Cookies.Add(cookie);
                    lblWelcome.Text = "<strong>Cookie Created.</strong><br /><br />";
                    lblWelcome.Text += "New Customer: " + cookie["Name"];
                    lblCookie.Text = "HTTP_COOKIE: "
                        + Request.ServerVariables["HTTP_COOKIE"];
                }
                else
                {
                    lblWelcome.Text = "<strong>Welcome Back:</strong> " + cookie["Name"];
                    lblCookie.Text = "HTTP_COOKIE: "
                        + Request.ServerVariables["HTTP_COOKIE"];
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Preferences"];
            if (cookie != null)
            {
                txtName.Text = "";
                txtPass.Text = "";
                Response.Cookies.Clear();
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);
                lblWelcome.Text =
                    "Refresh the page. Cookie deleted: " + cookie["Name"];
                lblCookie.Text = "HTTP_COOKIE: "
                    + Request.ServerVariables["HTTP_COOKIE"];
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Week4Cookies.aspx");
        }
    }

}