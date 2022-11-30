using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class HakkımızdaAdmin : System.Web.UI.Page
    {
        connection connection = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;

            if (Page.IsPostBack==false)
            {

            SqlCommand komut = new SqlCommand("Select * From Tbl_About", connection.baglanti());
            SqlDataReader sqlData = komut.ExecuteReader();
            while (sqlData.Read())
            {
                TextBox1.Text = sqlData[0].ToString();
            }
            connection.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand sqlCommand = new SqlCommand("update Tbl_About set  Metin=@p1", connection.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.ExecuteNonQuery();
            connection.baglanti().Close();
        }
    }
}