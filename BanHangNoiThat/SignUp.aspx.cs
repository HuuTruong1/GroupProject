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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string name = txtName.Text;
                string email = txtEmailSignUp.Text;
                string password = txtPasswordSignUp.Text;

                bool isRegistered = RegisterUser(name, email, password);

                if (isRegistered)
                {
                    ShowSuccessMessageAndRedirect("Registration successful! Welcome to our community.", "SignIn.aspx");
                }
                else
                {
                    // Đăng ký thất bại, hiển thị thông báo hoặc xử lý khác
                }
            }
        }
        private void ShowSuccessMessageAndRedirect(string message, string redirectUrl)
        {
            string script = $@"<script type='text/javascript'>
                                var result = window.confirm('{message}');
                                if (result) {{
                                    window.location.href = '{redirectUrl}';
                                }}
                                </script>";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessageAndRedirect", script);
        }

        private bool RegisterUser(string name, string email, string password)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\II_LearnDocument\KYTHUATTHUONGMAIDIENTU\GroupProject\BanHangNoiThat\BanHangNoiThat\App_Data\QuanLyBanNoiThat.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO Account (Username, Email, Password) VALUES (@Name, @Email, @Password)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);

                    int rowsAffected = command.ExecuteNonQuery();

                    return rowsAffected > 0;
                }
            }
        }
    }
}