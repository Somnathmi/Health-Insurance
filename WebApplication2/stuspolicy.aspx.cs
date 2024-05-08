using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class stuspolicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}