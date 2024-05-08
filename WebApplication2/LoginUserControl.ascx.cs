using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

namespace WebApplication2
{
    public partial class login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtuid.Focus();
        }

        
    



    protected void Button1_Click1(object sender, EventArgs e)
        {
            if (txtuid.Text.Trim().Length > 50)
                lblMsg.Text = "Username must be within 50 characters";
            if (txtpwd.Text.Trim().Length > 10)
                lblMsg.Text = "Password should within 50 characters";
            string empno = EmpRegister.GETEmpLogin(txtuid.Text, txtpwd.Text);

            if (!String.IsNullOrEmpty(empno))
            {
                Session["empno"] = empno;
                Session["password"] = txtpwd.Text;
                Response.Redirect("~/Employee/frmHomepage.aspx");
            }
            else
            {
                lblMsg.Text = "Invalid Username or Password";
                txtpwd.Focus();

            }
        }
    }