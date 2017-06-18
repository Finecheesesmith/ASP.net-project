using System;
using System.Data;
using System.Linq;
using System.Text;
using System.Web.UI;
using AjaxControlToolkit;
using Devart.Data.Linq;
using Devart.Data.PostgreSql;
using DvdrentalContext;
namespace Cheeseman
{
    public partial class WebForm2 : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    DvdrentalDataContext entitites = new DvdrentalDataContext("User Id=postgres;Password=mike.3677;host=localhost;database=dvdrental;", new Devart.Data.Linq.Mapping.AttributeMappingSource());

                    var query = from it in entitites.Actors
                        where  it.ActorId <= 10
                        select it;
                    GridView1.DataSource = query.ToList();
                    //entitites.SubmitChanges();
                    //DataContext Context = new DataContext("User Id=postgres;Password=mike.3677;host=localhost;database=dvdrental;", new Devart.Data.Linq.Mapping.AttributeMappingSource());
                    
                    //DataSet ds = new DataSet();
                    //PgSqlConnection pgConnection =
                    //    new PgSqlConnection("User Id=postgres;Password=mike.3677;host=localhost;database=dvdrental;");
                    //pgConnection.Open();
                    //string mySelectQuery = "SELECT * FROM actor WHERE (actor_id <= 10)";

                    //PgSqlDataAdapter myAdapter = new PgSqlDataAdapter(mySelectQuery, pgConnection);
                    //myAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;

                    //myAdapter.Fill(ds);
                    //var dt = ds.Tables[0];
                    //GridView1.DataSource = dt;
                    GridView1.AutoGenerateColumns = true;
                   GridView1.DataBind();
                    //pgConnection.Close();
                }
                catch (Exception msg)
                {
                    String csname1 = "PopupScript";
                    Type cstype = this.GetType();
                    // Get a ClientScriptManager reference from the Page class.
                    ClientScriptManager cs = Page.ClientScript;

                    // Check to see if the startup script is already registered.
                    if (!cs.IsStartupScriptRegistered(cstype, csname1))
                    {
                        StringBuilder cstext1 = new StringBuilder();
                        cstext1.Append("<script type=text/javascript> alert('Hello World!') </");
                        cstext1.Append("script>");

                        cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
                    }
                }

            }
        }
    }
}