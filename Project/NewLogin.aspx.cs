using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
namespace Project
{
    public partial class NewLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                //Button masterLogin = (Button)Master.FindControl("headerLogin"); ;
                //masterLogin.Text = "inlogin";
                Response.Redirect("NewHome.aspx");
            }
            incorrectSignIn.Visible = false;
        }
        protected void Signin_Click(object sender, EventArgs e)
        {
            ClsBusinessLogicLayer bussObj = new ClsBusinessLogicLayer();
            bool ret = bussObj.Login(email.Text.Trim(), password.Text.Trim());
            if (ret)
            {
                Session["email"] = email.Text.Trim();
                Response.Redirect("NewHome.aspx");
            }
            else
                incorrectSignIn.Visible = true;

        }
    }
}