using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.OleDb;           // used in Access database processing
using System.Web.Configuration;    // used to access the web config file 

namespace Cheeseman
{
    public partial class Week6DatabaseInfo : System.Web.UI.Page
    {
        //Accesses the database upon page load and does not require buttons or other user actions
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = WebConfigurationManager.ConnectionStrings["Cheeseman"].ConnectionString;
            // Defining the database connection object
            OleDbConnection conn = new OleDbConnection(CS);
            // Opening the connection and displaying the file information in the lblDBConn label.
            conn.Open();
            lblDBConn.Text += "State: " + conn.State.ToString();
            lblDBConn.Text += "<br />Name: " + conn.Database;            
            lblDBConn.Text += "<br />Provider: " + conn.Provider;
            lblDBConn.Text += "<br />Source: " + conn.DataSource;
            lblDBConn.Text += "<br />Server Ver: " + conn.ServerVersion;

            //delcaring a string called SQL to hold the query to be sent to the database
            //in this case the query is collecting the reasurant name and food served
            string SQL= "SELECT [RestaurantName], [Food] FROM [Restaurant]";

            //declaring the command object which uses the connection to the db to send the SQL query
            OleDbCommand comm = new OleDbCommand(SQL, conn);

            //Opening a reader to processing the command results
            OleDbDataReader reader = comm.ExecuteReader();

            //while the data is in the comm object, display the results in the lblComm label
            while (reader.Read())
            {
                lblDBComm.Text += reader["RestaurantName"] + " serves a menu of " + reader["Food"] + "<br />";
            }

            //Close the reader and the connection to reader
            reader.Close();
            conn.Close();
        }
    }
}