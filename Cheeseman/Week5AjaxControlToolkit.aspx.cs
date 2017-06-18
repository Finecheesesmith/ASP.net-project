using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week5AjaxControlToolkit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit1_Click(object sender, EventArgs e)
        {
            if (DateSelection.Text == "")
            {
                Label2.Text = "Select a date...Please!";
            }
            else
            {
                Label2.Text = "You have selected: " + DateSelection.Text;
            }
        }
    }
}