using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        connection connection = new connection();
        string id="";
        string islem = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack==false)
            {
                id = Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }

            SqlCommand komut = new SqlCommand("Select * From Tbl_Category", connection.baglanti());
            SqlDataReader sqlData = komut.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();


            // Silme İşlemi

            if (islem=="sil")
            {
                SqlCommand komutSil = new SqlCommand("Delete From Tbl_Category where KategoriId=@p1",connection.baglanti());
                komutSil.Parameters.AddWithValue("@p1", id);
                komutSil.ExecuteNonQuery();
                connection.baglanti().Close(); 
            }


            Panel2.Visible = false; // panel ilk yüklendiği zaman panel2 başlangıcta gözükmemesi için 
            Panel4.Visible = false;
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Category (KategoriAdi) values (@p1)",connection.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut.ExecuteNonQuery();
            connection.baglanti().Close();
        }
    }
}