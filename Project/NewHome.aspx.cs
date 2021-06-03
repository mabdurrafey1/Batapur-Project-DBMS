using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class NewHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                string email = Session["email"].ToString();
                ////Response.Write("<script>alert("+Session["email"].ToString() +");</script>");
                //Response.Write("<script>alert(true);</script>");
                //Button masterlogin;
                //masterlogin = (Button)Master.FindControl("headerlogin");
                //masterlogin.Text = "home";
                signin.Text = "Logout " + email;
                signup.Visible = false;
            }
            else
            {

            }
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Session.Abandon();
                Response.Redirect("NewLogin.aspx");
            }
            else
            {
                Response.Redirect("NewLogin.aspx");
            }
        }

        protected void signup_Click(object sender, EventArgs e)
        {

            Response.Redirect("NewSignUp.aspx");
        }
    }
}