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
    public partial class detailProduct : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\II_LearnDocument\KYTHUATTHUONGMAIDIENTU\GroupProject\BanHangNoiThat\BanHangNoiThat\App_Data\QuanLyBanNoiThat.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["Product_Id"] == null)
                q = "select * from Product";
            else
            {
                string mahang = Context.Items["Product_Id"].ToString();
                q = "select * from Product where Product_Id = '" + mahang + "'";
            }
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList.DataSource = dt;
                this.DataList.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
}