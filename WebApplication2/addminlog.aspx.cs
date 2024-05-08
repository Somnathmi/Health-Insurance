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
    public partial class addminlog : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Somnath mithari\source\repos\WebApplication2\WebApplication2\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select usernm , pass from addlog where usernm='" + txtuid.Text + "'and pass='" + txtpwd.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["id"] = txtpwd.Text;
                Response.Redirect("WebForm2.aspx");
            }
            else
            {
                Response.Write("<script>alert('Enter Valid Username & Password')</script>");
            }

            
        }
    }
}