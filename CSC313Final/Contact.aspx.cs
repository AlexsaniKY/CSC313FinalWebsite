using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace CSC313Final
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            string connStr = "server=127.0.0.1;user id=root;persistsecurityinfo=True;database=csc313finaldb;SslMode=none;";
            MySqlConnection conn = new MySqlConnection(connStr);

            try
            {
                conn.Open();
                string sql = "select * from Equipment where name like @name and manufacturer like @manu and equipment_type like @equip and battery_type like @batt order by equipment_type, manufacturer, name;";

                MySqlCommand cmd = new MySqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@name", "%" + searchName.Text + "%");
                cmd.Parameters.AddWithValue("@manu", "%" + searchManu.Text + "%");
                cmd.Parameters.AddWithValue("@equip", "%"+ searchEquip.Text + "%");
                cmd.Parameters.AddWithValue("@batt", "%" + searchBatt.Text + "%");

                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();

                adp.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}