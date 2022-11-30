using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        connection connection = new connection();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajId"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Message where MesajId=@p1", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader sqlData = komut.ExecuteReader();
            while (sqlData.Read())
            {
                TextBox1.Text = sqlData[1].ToString();
                TextBox2.Text = sqlData[2].ToString();
                TextBox3.Text = sqlData[3].ToString();
                TextBox4.Text = sqlData[4].ToString();
            }
            connection.baglanti().Close();
        }
    }
}