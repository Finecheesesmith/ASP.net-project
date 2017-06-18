using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week3SelectMultipleDates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalendarMultiple_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "<strong>You selected the following dates:</strong><br /><br />";

            // First and last date
            Label1.Text += CalendarMultiple.SelectedDates[0].ToShortDateString() +
                " through ";
            int lastdate = Convert.ToInt32(CalendarMultiple.SelectedDates.Count.ToString()) - 1;
            Label1.Text += CalendarMultiple.SelectedDates[lastdate].ToShortDateString();

            // Number of days chosen. 
            Label1.Text += "<br /><br />";
            Label1.Text += "<strong>Number of days chosen: </strong>" +
            CalendarMultiple.SelectedDates.Count.ToString() + "<br /><br />";

            // List the individual dates
            Label1.Text +=
            "<strong>You selected the following individual date/dates:</strong><br />";

            for (int i = 0; i < CalendarMultiple.SelectedDates.Count; i++)
            {
                Label1.Text += CalendarMultiple.SelectedDates[i].ToShortDateString() +
                    "<br />";
            }
        }
    }
}