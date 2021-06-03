using System;
using System.Data.SqlClient;

namespace Project
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signupbutton_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-QL7TB40\SQLEXPRESS;Initial Catalog=Unico;Integrated Security=True"))
            {
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("userRegisteration", sqlCon);
                sqlCmd.CommandType = System.Data.CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@FirstName", firstName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@LastName", lastName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Email", emailToRegister.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Phone", phone.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@UserPassword", password.Text.Trim());
                try
                {
                    sqlCmd.ExecuteNonQuery();
                    Response.Write("<script>alert('registration successfull');</script>");
                    clear();
                }
                catch
                {
                    Response.Write("<script>alert('UserName or Phone Number Already Exists! Try Login!');</script>");
                }

            }
        }
        void clear()
        {
            firstName.Text = lastName.Text = emailToRegister.Text = phone.Text = password.Text = "";
        }
    }
}