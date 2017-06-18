using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;

namespace Cheeseman
{
    public partial class Week7Discussion7_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Week7DSCustomerInfoTableAdapters.CustomerInfoTableAdapter CustInfoAdapter =
                       new Week7DSCustomerInfoTableAdapters.CustomerInfoTableAdapter();

                Week7DSCustomerInfo.CustomerInfoDataTable custInfoTable;

                custInfoTable = CustInfoAdapter.GetData();

                GridView1.DataSource = custInfoTable;
                GridView1.DataBind();
            }
        }
    }
}