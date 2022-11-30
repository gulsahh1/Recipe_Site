using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class YemekDüzenle : System.Web.UI.Page
    {
        connection connection = new connection();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["YemekId"]; // diğer formdan taşınan değer

            if (Page.IsPostBack == false)  // sayfayı yeniden yükleme demiş oluyoruz
            {
                SqlCommand komut = new SqlCommand("Select*From Tbl_Meals where YemekId=@p1", connection.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader sqlData = komut.ExecuteReader();
                while (sqlData.Read())
                {
                    TextBox1.Text = sqlData[1].ToString();
                    TextBox2.Text = sqlData[2].ToString();
                    TextBox3.Text = sqlData[3].ToString();

                }
                connection.baglanti().Close();


                if (Page.IsPostBack == false)
                {
                    // Kategori Listesi
                    SqlCommand komut1 = new SqlCommand("Select * From Tbl_Category", connection.baglanti());
                    SqlDataReader sqlData1 = komut1.ExecuteReader();

                    DropDownList1.DataTextField = "KategoriAdi";
                    DropDownList1.DataValueField = "KategoriId"; // arka planda tutulucak olan değer

                    DropDownList1.DataSource = sqlData1;
                    DropDownList1.DataBind();


                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/Resimler/"+FileUpload1.FileName));

            SqlCommand sqlCommand = new SqlCommand("update Tbl_Meals set YemekAdi=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriId=@p4 ,YemekResim=@p6 where YemekId=@p5", connection.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", TextBox1.Text);
            sqlCommand.Parameters.AddWithValue("@p2", TextBox2.Text);
            sqlCommand.Parameters.AddWithValue("@p3", TextBox3.Text);
            sqlCommand.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@p6", "/Resimler/"+ FileUpload1.FileName);
            sqlCommand.Parameters.AddWithValue("@p5", id);
            sqlCommand.ExecuteNonQuery();
            connection.baglanti().Close();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            // tüm yemekler için durumu false yaptık
            SqlCommand sql = new SqlCommand("update Tbl_Meals set Durum=0", connection.baglanti());
            sql.ExecuteNonQuery();
            connection.baglanti().Close();

            // günün yemeği için id'ye göre durumu true yapalım

            SqlCommand sql2 = new SqlCommand("update Tbl_Meals set Durum=1 where YemekId=@p1", connection.baglanti());
            sql2.Parameters.AddWithValue("@p1",id);
            sql2.ExecuteNonQuery();
            connection.baglanti().Close();
        }
    }
}