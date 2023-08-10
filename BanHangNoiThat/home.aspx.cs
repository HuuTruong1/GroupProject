using System;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Web.UI.WebControls;

namespace BanHangNoiThat
{
    public partial class home : System.Web.UI.Page
    {
        string con = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\II_LearnDocument\KYTHUATTHUONGMAIDIENTU\GroupProject\BanHangNoiThat\BanHangNoiThat\App_Data\QuanLyBanNoiThat.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategories();
                if (Session["SearchTerm"] != null)
                {
                    string searchTerm = Session["SearchTerm"].ToString();
                    Console.WriteLine("SearchTerm: " + searchTerm);
                    BindProductList(searchTerm);
                } else
                {
                    BindAllProducts();
                }
            }
        }

        private void BindProductList(string searchTerm)
        {
            using (SqlConnection connection = new SqlConnection(con))
            {
                connection.Open();

                string query = "SELECT * FROM Product WHERE Product_name LIKE @searchTerm";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@searchTerm", "%" + searchTerm + "%");

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);

                    productDataList.DataSource = dt;
                    productDataList.DataBind();
                }
            }
        }

        protected void BindCategories()
        {
            DataTable dtCategories = GetCategories();
            DataList.DataSource = dtCategories;
            DataList.DataBind();
        }

        protected void CategoryButton_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            string categoryId = linkButton.CommandArgument;

            BindProductsByCategory(categoryId);
        }

        protected void BindAllProducts()
        {
            DataTable dtAllProducts = GetAllProducts();
            productDataList.DataSource = dtAllProducts;
            productDataList.DataBind();
        }

        protected void BindProductsByCategory(string categoryId)
        {
            DataTable dtProducts = GetProductsByCategory(categoryId);
            productDataList.DataSource = dtProducts;
            productDataList.DataBind();
        }

        protected DataTable GetCategories()
        {
            DataTable dtCategories = new DataTable();
            using (SqlConnection connection = new SqlConnection(con))
            {
                string query = "SELECT Category_Id, Category_name FROM Category";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(dtCategories);
                    }
                }
            }
            return dtCategories;
        }

        protected DataTable GetProductsByCategory(string categoryId)
        {
            DataTable dtProducts = new DataTable();
            using (SqlConnection connection = new SqlConnection(con))
            {
                string query = "SELECT * FROM Product WHERE Category_Id = @CategoryId";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@CategoryId", categoryId);
                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(dtProducts);
                    }
                }
            }
            return dtProducts;
        }

        protected DataTable GetAllProducts()
        {
            DataTable dtAllProducts = new DataTable();
            using (SqlConnection connection = new SqlConnection(con))
            {
                string query = "SELECT * FROM Product";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        adapter.Fill(dtAllProducts);
                    }
                }
            }
            return dtAllProducts;
        }

        protected void linkButton_Click(object sender, EventArgs e)
        {
            string mahang = ((LinkButton)sender).CommandArgument;
            Context.Items["Product_Id"] = mahang;
            Server.Transfer("detailProduct.aspx");
        }
    }
}
