using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cheeseman
{
    public partial class Week4Browsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text =
            "HTTP Server Variable User Agent: " + Request.ServerVariables["HTTP_USER_AGENT"] + "<br /><br />" +
            "Browser: " + Page.Request.Browser.Browser + "<br />" +
            "Name and Major Version: " + Page.Request.Browser.Type.ToString() + "<br />" +
            "Version: " + Page.Request.Browser.Version + "<br />" +
            "Minor Version Number: " + Page.Request.Browser.MinorVersion.ToString() + "<br />" +
            "Platform: " + Page.Request.Browser.Platform + "<br />" +
            "Beta Version: " + Page.Request.Browser.Beta.ToString() + "<br />" +
            "<br />" +
            "Supports Cookies: " + Page.Request.Browser.Cookies.ToString() + "<br />" +
            "Supports BGSOUND: " + Page.Request.Browser.BackgroundSounds.ToString() + "<br />" +
            "Supports CSS: " + Page.Request.Browser.SupportsCss.ToString() + "<br />" +
            "Supports ECMAScript JavaScript: " +
                Page.Request.Browser.EcmaScriptVersion.ToString() + "<br />" +
            "Supports Frames: " + Page.Request.Browser.Frames.ToString() + "<br />" +
            "Supports Java Applets: " + Page.Request.Browser.JavaApplets.ToString() + "<br />" +
            "Maximum HREF Characters: " + Page.Request.Browser.MaximumHrefLength.ToString() + "<br />" +
            "Input Type: " + Page.Request.Browser.InputType.ToString() + "<br />" +
            "<br />" +
            "Display Height: " + Page.Request.Browser.ScreenPixelsHeight.ToString() + "<br />" +
            "Display Width: " + Page.Request.Browser.ScreenPixelsWidth.ToString() + "<br />" +
            "Display BitsPerPixel: " + Page.Request.Browser.ScreenBitDepth.ToString() + "<br />" + "Mobile Device: " + Page.Request.Browser.IsMobileDevice.ToString() + "<br />" +
            "Mobile Manufacturer: " + Page.Request.Browser.MobileDeviceManufacturer.ToString() + "<br />" +
            "Mobile Device Model: " + Page.Request.Browser.MobileDeviceModel.ToString(); 
        }
    }
}