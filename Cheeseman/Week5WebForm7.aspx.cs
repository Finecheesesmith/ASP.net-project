using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//using System.Drawing;           // Needed for System.Drawing.KnownColor
//using System.Drawing.Text;      // Needed for InstalledFontCollection
using System.Collections;       // Needed for ArrayList and HashTables
//using System.ComponentModel;    // Needed for TypeConverter

namespace Cheeseman
{
    public partial class Week5WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (this.IsPostBack == false)
            {
                ArrayList ManList = new ArrayList();
                ManList.Add("Ford");
                ManList.Add("Nissan");
                ManList.Add("Dodge");
                ManList.Add("Chevy");
                ManList.Add("Toyota");
                ManList.Add("Kia");
                ManList.Add("Lexus");
                ManList.Add("BMW");
                ManList.Add("Mercedes");
                ManList.Add("Volv0");
                ManList.Add("Volks Wagon");

                favManSelection.DataSource = ManList;
                favManSelection.DataBind();

            }
            else
            {
                updateSite();
            }
        }

        private void updateSite()
        {
            manSelection.Text = "My favorite manufacturer is " + favManSelection.SelectedItem.Text;
        }

        protected void darkBlueCar_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = dark_Blue_Car.ImageUrl;
        }

        protected void redCar_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = red_Car.ImageUrl;
        }

        protected void pinkCar_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = pink_Car.ImageUrl;
        }

        protected void greenCar_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = green_Car.ImageUrl;
        }

        protected void yellowConvertable_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = yellow_Convertable.ImageUrl;
        }

        protected void lightBlueCar_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = light_Blue_Car.ImageUrl;
        }

        protected void redWhiteCar_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = red_White_Car.ImageUrl;
        }

        protected void yellowCar_Click(object sender, ImageClickEventArgs e)
        {
            favCarColor.ImageUrl = yellow_Car.ImageUrl;
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {

        }

    }
}