using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test
{
    public partial class serviceSearchForm : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {
            bindGridView();
        }


        void bindGridView()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from serviceProviders";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            DataTable data = new DataTable();
            sda.Fill(data);
            grid.DataSource = data;
            grid.DataBind();
        }


        void serviceType1()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from serviceProviders where serviceType like @serviceType";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@serviceType", searchBox.Text.Trim()+'%');
            DataTable data = new DataTable();
            sda.Fill(data);
            grid.DataSource = data;
            grid.DataBind();
        }

        void location1()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from serviceProviders where location like @location";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.Parameters.AddWithValue("@location",searchBox.Text.Trim()+'%');
            DataTable data = new DataTable();
            sda.Fill(data);
            grid.DataSource = data;
            grid.DataBind();
        }
    

        protected void search_Click(object sender, EventArgs e)
        {


            if (select.SelectedItem.Value == "serviceType")
            {
                serviceType1();
            }
            else if (select.SelectedItem.Value == "location")
            {
                location1();
            }
        }

        protected void all_Click(object sender, EventArgs e)
        {
            bindGridView();
        }
    }
    }
