using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        connection connection = new connection();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["KategoriId"]; // diğer formdan taşınan değer

            if (Page.IsPostBack == false)  // sayfayı yeniden yükleme demiş oluyoruz
            {
                SqlCommand komut = new SqlCommand("Select*From Tbl_Category where KategoriId=@p1", connection.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader sqlData = komut.ExecuteReader();
                while (sqlData.Read())
                {
                    TxtKategoriDetayAd.Text = sqlData[1].ToString();
                    TxtAdet.Text = sqlData[2].ToString();
                }
                connection.baglanti().Close();
            }

        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Category set KategoriAdi=@p1 , KategoriAdet=@p2 where KategoriId=@p3", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriDetayAd.Text);
            komut.Parameters.AddWithValue("@p2", TxtAdet.Text);
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            connection.baglanti().Close();
        }
    }
}