using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BanHangNoiThat
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/home.aspx");
                }
            }
        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string email = txtEmailSignIn.Text;
            string password = txtPasswordSignIn.Text;

            bool isAuthenticated = AuthenticateUser(email, password);
            if (isAuthenticated)
            {
                Response.Redirect("~/home.aspx");
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "Tên đăng nhập hoặc mật khẩu không đúng.";
            }
        }

        private bool AuthenticateUser(string email, string password)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\II_LearnDocument\KYTHUATTHUONGMAIDIENTU\GroupProject\BanHangNoiThat\BanHangNoiThat\App_Data\QuanLyBanNoiThat.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connectionString;
            con.Open();
            string query = "SELECT COUNT(*) FROM Account WHERE Email = @Email AND Password = @Password";
            using (SqlCommand command = new SqlCommand(query, con))
            {
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);

                int count = Convert.ToInt32(command.ExecuteScalar());

                return count > 0;
            }
            con.Close();
        }
    }
}