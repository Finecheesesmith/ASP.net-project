using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week3TreeView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TreeView2.CheckedNodes.Count > 0)
            {
                Label1.Text = "Thank you for your order:<br />";
                foreach (TreeNode node in TreeView2.CheckedNodes)
                {
                    Label1.Text += node.Text + " " + node.Parent.Text + "<br />";
                }
            }
            else
            {
                Label1.Text = "You didn't order anything!";
            }
        }
    }
}