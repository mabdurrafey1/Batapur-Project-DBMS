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
    public partial class NewSignUo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            incorrectSignUp.Visible = false;
        }

        protected void signupbutton_Click(object sender, EventArgs e)
        {
            ClsBusinessLogicLayer bussObj = new ClsBusinessLogicLayer();
            if (bussObj.SignUp(firstName.Text.Trim(), lastName.Text.Trim(), emailToRegister.Text.Trim(), phone.Text.Trim(), password.Text.Trim()))
            {
                Session["email"] = emailToRegister.Text.Trim();
                Response.Redirect("NewHome.aspx");
                //Response.Write("<script>alert('Registration Successfull');</script>");
            }
            else
            {
                incorrectSignUp.Visible = true;
                //Response.Write("<script>alert('UserName or Phone Number Already Exists! Try Login!');</script>");
            }
            //using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-QL7TB40\SQLEXPRESS;Initial Catalog=Unico;Integrated Security=True"))
            //{
            //    sqlCon.Open();
            //    SqlCommand sqlCmd = new SqlCommand("userRegisteration", sqlCon);
            //    sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
            //    sqlCmd.Parameters.AddWithValue("@FirstName", firstName.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@LastName", lastName.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@Email", emailToRegister.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@Phone", phone.Text.Trim());
            //    sqlCmd.Parameters.AddWithValue("@UserPassword", password.Text.Trim());
            //    try
            //    {
            //        sqlCmd.ExecuteNonQuery();
            //        Response.Write("<script>alert('registration successfull');</script>");
            //        //clear();
            //    }
            //    catch
            //    {
            //        Response.Write("<script>alert('UserName or Phone Number Already Exists! Try Login!');</script>");
            //    }

            //}
        }
    }
}