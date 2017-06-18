using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week3BasicAdRotator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.HasKeys())
            {
                LargeImage.ImageUrl = "~/Images/" + Request.QueryString["id"].ToString();
            }
            else
            {
                LargeImage.ImageUrl = "~/Images/pinkcar.png";//Pink car image on behalf of http://www.clker.com/cliparts/M/V/h/M/M/U/pink-car-hi.png
            }
        }
    }
}