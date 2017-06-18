using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week4Sessions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Session["CustomerName"] = TextBox1.Text;
                Session["LastLoginDate"] = DateTime.Now.ToShortDateString();
                Session["LastLoginTime"] = DateTime.Now.ToShortTimeString();
                Session["SessionID"] = Session.SessionID.ToString();

                Label1.Text = "Welcome Back, " +
                Session["CustomerName"] + "<br />" + "Your last login was on " +
                Session["LastLoginDate"] + " at " +
                Session["LastLoginTime"] + " and the session number was : " +
                Session["SessionID"];
            }  
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}