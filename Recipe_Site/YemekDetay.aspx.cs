using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        connection connection = new connection();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("Select * From Tbl_Meals Where YemekId=@p1 ", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader sqlDataReader = komut.ExecuteReader();
            while (sqlDataReader.Read()) // sqldatareader okuma yaptık yemek id sine göre yemek adını getiricek
            {
                Label3.Text = sqlDataReader[1].ToString();
            }
            connection.baglanti().Close();

            // Yorum Listeleme

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Comment Where YemekId=@p2",connection.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemekid);
            SqlDataReader sqlDataReader1 = komut2.ExecuteReader();
            DataList2.DataSource = sqlDataReader1;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Comment(YorumAdSoyad,YorumMail,Yorumİçerik,YemekId) values (@p1,@p2,@p3,@p4)", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtYorumIcerik.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
         
            komut.ExecuteNonQuery();
            connection.baglanti().Close();
            Response.Write("Tarifiniz Alınmıştır.");
        }
    }
}