using System; 
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web; 
namespace DLL
{
    public class ClsDataLayer
    {
        public bool Login(string email, string password)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-QL7TB40\SQLEXPRESS;Initial Catalog=Unico;Integrated Security=True"))
            {
                sqlCon.Open();
                string query = "select count(1) from [User] where Email=@email and UserPassword=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@email", email);
                sqlCmd.Parameters.AddWithValue("@password", password);

                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    //Session["email"] = email;
                    //Response.Write("<script>alert('succesfully logiedin');</script>");
                    return true;
                }
                else
                {
                    //Response.Write("<script>alert('not registered');</script>");
                    return false;
                }
            }
        }
    }
}
