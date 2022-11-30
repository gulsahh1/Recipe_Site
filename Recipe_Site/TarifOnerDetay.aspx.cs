using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        connection connection = new connection();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["TarifId"];

            if (Page.IsPostBack==false)
            {

        
            SqlCommand komut = new SqlCommand("Select * From Tbl_Description where TarifId=@p1", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader sqlData = komut.ExecuteReader();
            while (sqlData.Read())
            {
                TextBox1.Text = sqlData[1].ToString();
                TextBox2.Text = sqlData[2].ToString();
                TextBox3.Text = sqlData[3].ToString();
                TextBox4.Text = sqlData[5].ToString();
                TextBox5.Text = sqlData[6].ToString();

            }
            connection.baglanti().Close();
            }

            // Kategori Listesi
            SqlCommand komut1 = new SqlCommand("Select * From Tbl_Category", connection.baglanti());
            SqlDataReader sqlData1 = komut1.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAdi";
            DropDownList1.DataValueField = "KategoriId"; // arka planda tutulucak olan değer

            DropDownList1.DataSource = sqlData1;
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Durum güncelleme
            SqlCommand sqlCommand = new SqlCommand("update Tbl_Description set TarifDurum=1 where TarifId=@p1",connection.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1",id);
            sqlCommand.ExecuteNonQuery();
            connection.baglanti().Close();

            // Yemeği Anasayfaya Ekleme

            SqlCommand sqlCommand2 = new SqlCommand("insert into Tbl_Meals (YemekAdi,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", connection.baglanti());
            sqlCommand2.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand2.Parameters.AddWithValue("@p2", TextBox2.Text);
            sqlCommand2.Parameters.AddWithValue("@p3", TextBox3.Text);
            sqlCommand2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sqlCommand2.ExecuteNonQuery();
            connection.baglanti().Close();



        }
    }
}