using System;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using AjaxControlToolkit;
using Devart.Data.Linq;
using Devart.Data.PostgreSql;
using DvdrentalContext;
namespace Cheeseman
{
    public partial class WebForm2 : Page
    {


        private static string password;
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //try
                // {
                // DvdrentalDataContext entitites = new DvdrentalDataContext("User Id=postgres;Password=;host=localhost;database=dvdrental;", new Devart.Data.Linq.Mapping.AttributeMappingSource());
              //  var records = entitites.Actors.Skip(20).Take(20);

                //var range = (from it in entitites.Actors
                //    where it.ActorId 
                //    select it);

               // var count = entitites.Actors.Count();

                //while (int i >= count)
                //{
                    
                //}

                ListItemCollection items = new ListItemCollection
                {
                    new ListItem("Please Choose Actor ID range", "0"),
                    new ListItem("1-10", "1-10"),
                    new ListItem("11-20", "11-20"),
                    new ListItem("21-30", "21-30"),
                    new ListItem("31-40", "31-40")
                };

                DropDownList.DataSource = items;
                DropDownList.DataBind();


                //var query = from it in entitites.Actors
                //    where  it.ActorId <= 10
                //    select it;
                //GridView1.DataSource = query.ToList();
                //GridView1.AutoGenerateColumns = true;
                //GridView1.DataBind();



                //entitites.SubmitChanges();
                //DataContext Context = new DataContext("User Id=postgres;Password=;host=localhost;database=dvdrental;", new Devart.Data.Linq.Mapping.AttributeMappingSource());

                //DataSet ds = new DataSet();
                //PgSqlConnection pgConnection =
                //    new PgSqlConnection("User Id=postgres;Password=;host=localhost;database=dvdrental;");
                //pgConnection.Open();
                //string mySelectQuery = "SELECT * FROM actor WHERE (actor_id <= 10)";

                //PgSqlDataAdapter myAdapter = new PgSqlDataAdapter(mySelectQuery, pgConnection);
                //myAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;

                //myAdapter.Fill(ds);
                //var dt = ds.Tables[0];
                //GridView1.DataSource = dt;
                //pgConnection.Close();
            }
            //catch (Exception msg)
            //{
            //    String csname1 = "PopupScript";
            //    Type cstype = this.GetType();
            //    // Get a ClientScriptManager reference from the Page class.
            //    ClientScriptManager cs = Page.ClientScript;

            //    // Check to see if the startup script is already registered.
            //    if (!cs.IsStartupScriptRegistered(cstype, csname1))
            //    {
            //        StringBuilder cstext1 = new StringBuilder();
            //        cstext1.Append("<script type=text/javascript> alert('Hello World!') </");
            //        cstext1.Append("script>");

            //        cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
            //    }
            //}

            //}
        }


        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedId = (DropDownList.SelectedValue);
            if (selectedId == "0")
            {
                GridView1.DataSource = null;
            }

            else
            {
                // Includes PageIndexChanging, needs to be handled if this code is implemented.
                //var item = Regex.Split(selectedId, "-");
                //var query = entitites.Actors.Skip(Convert.ToInt32(item[0])).Take(Convert.ToInt32(item[1]));
                //GridView1.DataSource = query.ToList();
                ViewState["password"] = password;
                DvdrentalDataContext entitites = new DvdrentalDataContext("User Id=postgres;Password=" + password + ";host=localhost;database=dvdrental;", new Devart.Data.Linq.Mapping.AttributeMappingSource());

                var item = Regex.Split(selectedId, "-");
                var query = from it in entitites.Actors
                             where it.ActorId >= Convert.ToInt32(item[0]) && it.ActorId <= Convert.ToInt32(item[1])
                              select it;
                   GridView1.DataSource = query.ToList();



            }

            GridView1.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            password = TextBox1.Text;
            //DvdrentalDataContext entitites = new DvdrentalDataContext("User Id=postgres;Password=" + password + ";host=localhost;database=dvdrental;", new Devart.Data.Linq.Mapping.AttributeMappingSource());
            ViewState["password"] = password;

        }


    }
}