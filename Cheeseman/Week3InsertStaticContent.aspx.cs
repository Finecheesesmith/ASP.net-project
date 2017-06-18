using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week3InsertStaticContent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalendarWithData_DayRender(object sender, DayRenderEventArgs e)
            {
                e.Cell.VerticalAlign = VerticalAlign.Top;  // Global properties for all cells

                // Only set text for one day, not for the date if it appears in other month. 
                if ((e.Day.DayNumberText == "6") && (e.Day.IsOtherMonth == false))
                { 
                    e.Cell.Font.Size = 8;		// configure the new properties for that cell
    
                    // add new controls into the day cell for that one day.  

                    e.Cell.Controls.Add(new	LiteralControl("<br><strong>User Group Meeting!</strong><br>")); 
                    HyperLink hl = new HyperLink();
                    hl.Text = "More Info";
                    hl.NavigateUrl = "~/Week3.aspx?eventID=42";
                    e.Cell.Controls.Add(hl);

                    Image imagel = new Image();
                    imagel.AlternateText = "Image of a red car.";
                    imagel.ImageUrl = "~/Images/redcar.png";//Red car image on behalf of http://www.clker.com/cliparts/R/7/e/b/5/X/red-car-hi.png
                    e.Cell.Controls.Add(imagel);

                    e.Cell.BorderColor = System.Drawing.Color.OrangeRed;
                    e.Cell.BorderWidth = 1;
                    e.Cell.BorderStyle = BorderStyle.Solid;
                    e.Cell.BackColor = System.Drawing.Color.Aquamarine;
                }
            }
        protected void CalendarWithData_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = CalendarWithData.SelectedDate.ToShortDateString() + "  " +
                    CalendarWithData.SelectedDate.DayOfWeek;
            if (CalendarWithData.SelectedDate.DayOfWeek.ToString() == "Monday")
            {
                Label1.Text += " <br /><br />Today is Monday No School!";
            }
        }
    
    }
}