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
    public partial class Addpo : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Somnath mithari\source\repos\WebApplication2\WebApplication2\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "insert into Addpolicy(idno,Name,Category,Amount,EMI,Tenure,Date)values('" + txtcid.Text + "','" + txtname.Text + "' ,'" + txtcat.Text + "' ,'" + txtAmt.Text + "' ,'" + txtEmi.Text + "' ,'" + txtten.Text + "' ,'" + txtdate.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            txtcid.Text = "";
            txtname.Text = "";
            txtcat.Text = "";
            txtAmt.Text = "";
            txtEmi.Text = "";
            txtten.Text = "";
            txtdate.Text = "";
            display();
        }
        public void display()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Addpolicy ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            
            con.Close();
        }



    }
}