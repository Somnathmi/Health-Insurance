using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication2
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Somnath mithari\source\repos\WebApplication2\WebApplication2\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into contc values('" +txtname.Text+ "', '" +txtemail.Text+ "', '" +txtcontact.Text+ "', '" +txtsubject.Text+"', '"+txtmessage.Text+"')", con);

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}