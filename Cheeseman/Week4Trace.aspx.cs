using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week4Trace : System.Web.UI.Page
    {
        String Message;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                try
                {
                    decimal a = 5, b, result;
                    a = 5; b = 0;
                    result = a / b;
                }
                catch (Exception err)
                {
                    Trace.Warn("Category_WebSiteError", "You had an error.", err);
                    Trace.Write("Category_WebSiteError", " err.Message");
                    Message = err.Message;
                }
                Session["CustomerName"] = "Michael";
                Session["LastLoginDate"] = DateTime.Now.ToShortDateString();
                Session["SessionID"] = Session.SessionID.ToString();
                
                HttpCookie cookie = Request.Cookies["Preferences"];
                cookie = new HttpCookie("Preferences");
                cookie["CustomerName"] = "Michael"; 
                cookie.Expires = DateTime.Now.AddYears(1);
                Response.Cookies.Add(cookie);

                Label1.Text =
                "Look at the values returned then the values in the Trace Report below." + "<br /><br />"
                + "Error Message" + Message.ToString() + "<br /><br />"
                + "Welcome Back, " + Session["CustomerName"] + "<br /><br />"
                + "Your last login was on " + Session["LastLoginDate"] + "<br />"
                + "The session number was : " + Session["SessionID"] + "<br /><br />"
                + "You entered " + TextBox1.Text + "<br /><br />"
                + "Your cookie is " + cookie["CustomerName"] + "<br />"  
                + "Your HTTP_COOKIE is " + Request.ServerVariables["HTTP_COOKIE"];
            } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}