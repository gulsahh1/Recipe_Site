using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Yemekler : System.Web.UI.Page
    {
        string id = "";
        string islem = "";
        connection connection = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];

                // Kategori Listesi
                SqlCommand komut1 = new SqlCommand("Select * From Tbl_Category", connection.baglanti());
                SqlDataReader sqlData1 = komut1.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAdi";
                DropDownList1.DataValueField = "KategoriId"; // arka planda tutulucak olan değer

                DropDownList1.DataSource = sqlData1;
                DropDownList1.DataBind();


            }

            // Yemek Listesi

            SqlCommand komut = new SqlCommand("Select * From Tbl_Meals", connection.baglanti());
            SqlDataReader sqlData = komut.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komutSil = new SqlCommand("Delete From Tbl_Meals where YemekId=@p1", connection.baglanti());
                komutSil.Parameters.AddWithValue("@p1", id);
                komutSil.ExecuteNonQuery();
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
            Panel4.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {
            // yemek ekleme
            SqlCommand komut = new SqlCommand("insert into Tbl_Meals(YemekAdi,YemekMalzeme,YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)", connection.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYemekAdAdmin.Text);
            komut.Parameters.AddWithValue("@p2", TextBox1.Text);
            komut.Parameters.AddWithValue("@p3", TextBox2.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);

            komut.ExecuteNonQuery();
            connection.baglanti().Close();


            //Kategori Sayısını Artırma
            SqlCommand komut2 = new SqlCommand("update Tbl_Category set KategoriAdet= KategoriAdet+1 where KategoriId=@p1", connection.baglanti());
            komut2.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            connection.baglanti().Close();


        }
    }
}