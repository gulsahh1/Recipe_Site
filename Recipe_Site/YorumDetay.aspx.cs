using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        connection connection = new connection();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (true)
            {
                id = Request.QueryString["YorumId"];

                SqlCommand komut = new SqlCommand("Select YorumAdSoyad, YorumMail,YorumIcerik,YemekAdi From Tbl_Comment inner join Tbl_Meals on Tbl_Comment.YemekId=Tbl_Meals.YemekId Where YorumId=@p1 ", connection.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader sqlDataReader = komut.ExecuteReader();
                while (sqlDataReader.Read()) // sqldatareader okuma yaptık yorum id sine göre yorum adını getiricek
                {
                    TxtAd.Text = sqlDataReader[1].ToString();
                    TxtMail.Text = sqlDataReader[2].ToString();
                    TxtIcerik.Text = sqlDataReader[3].ToString();
                    TxtYemekAdi.Text = sqlDataReader[4].ToString();

                }
                connection.baglanti().Close();
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
            {
            SqlCommand komut = new SqlCommand(" Update Tbl_Comment set YorumIcerik=@p1, YorumOnay=@p2 where YorumId=@p3 ", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            connection.baglanti().Close();

        }
    }
}