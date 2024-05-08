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
    public partial class Registion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Somnath mithari\source\repos\WebApplication2\WebApplication2\App_Data\Database1.mdf;Integrated Security=True");

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into rgtab  values('"+txtfname.Text+ "', '" + txtlname.Text + "','" + txtusername.Text + "','" + txtpwd.Text + "')", con);
            cmd.ExecuteNonQuery();



            Response.Write("<script>alert('Registion successfully')</script>");
            if (Page.IsValid)
            {
                Response.Redirect("loginc.aspx");

            }
            con.Close();
        }
    }
}