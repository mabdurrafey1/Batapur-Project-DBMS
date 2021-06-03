using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL; 
namespace Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin_Click(object sender, EventArgs e)
        {
            ClsBusinessLogicLayer bussObj = new ClsBusinessLogicLayer();
            bool succ=  bussObj.Login(email.Text.Trim(), password.Text.Trim());
            Response.Write("<script>alert(true);</script>");


            ////Response.Write("<script>alert('lolohylollolololo');</script>");
            //using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-QL7TB40\SQLEXPRESS;Initial Catalog=Unico;Integrated Security=True"))
            //{
            //    sqlCon.Open();
            //    string query = "select count(1) from [User] where Email=@email and UserPassword=@password";
            //    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            //    sqlCmd.Parameters.AddWithValue("@email", email.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@password", password.Text.Trim());

            //    int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            //    if (count == 1)
            //    {
            //        Session["email"] = email.Text.Trim();
            //        Response.Write("<script>alert('succesfully logiedin');</script>");
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('not registered');</script>");
            //    }
            //}


        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            ClsBusinessLogicLayer bussObj = new ClsBusinessLogicLayer();
            bool ret = bussObj.Login(email.Text.Trim(), password.Text.Trim());
            if(ret)
            Response.Write("<script>alert(true);</script>");
            else
                Response.Write("<script>alert(false);</script>");

        }
    }
}