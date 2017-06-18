using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace Cheeseman
{
    /// <summary>
    /// Summary description for Discussion8_2WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Discussion8_2WebService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        //Will output a response to the question in the discussion8_2 webpage regarding graduation
        [WebMethod]
        public string Graduating(string FinishingCollege, string Name)
        {
            if (FinishingCollege == "Yes")
            {
                return "Congratulations " + Name + "!  You have reached the end of your collee Journey!";
            }
            else
            {
                return "Best of luck next semester! " + Name + ", keep up all the hard work!";
            }
        } 
    }
}
