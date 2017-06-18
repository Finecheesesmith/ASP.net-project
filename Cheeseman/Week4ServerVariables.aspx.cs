using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week4ServerVariables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Label1.Text = "<strong>Here are Common Server Variables</strong>"
                + "<br /><br />" +
            "AUTH_USER: " + Request.ServerVariables["AUTH_USER"] + "<br />" +
            "REMOTE_HOST: " + Request.ServerVariables["REMOTE_HOST"] + "<br />" +
            "HTTP_USER_AGENT: " + Request.ServerVariables["HTTP_USER_AGENT"]
                + "<br />" +
            "HTTP_COOKIE: " + Request.ServerVariables["HTTP_COOKIE"] + "<br />" +
            "APPL_PHYSICAL_PATH: " + Request.ServerVariables["APPL_PHYSICAL_PATH"]
                + "<br />" +
            "HTTP_REFERER: " + Request.ServerVariables["HTTP_REFERER"]
                + "<br /><br />";

                int i;
                for (i = 0; i < Request.ServerVariables.Count; i++)
                {
                    Label2.Text += Request.ServerVariables.GetKey(i) + "<br />";
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}