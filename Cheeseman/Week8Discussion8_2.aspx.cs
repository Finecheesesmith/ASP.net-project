

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week8Discussion8_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Discussion8_2WebService DoThis = new Discussion8_2WebService();
            string MyMessage = DoThis.HelloWorld();
            Label3.Text = MyMessage;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Discussion8_2WebService DoThis = new Discussion8_2WebService();
            string CollegeMsg = DoThis.Graduating(GradRadioList.SelectedItem.Text, NameTextBox.Text);
            ReplyLbl.Text = CollegeMsg;
        }
    }
}