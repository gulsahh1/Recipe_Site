using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        connection connection = new connection();
        string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriid = Request.QueryString["KategoriId"];
            SqlCommand komut = new SqlCommand("Select * From Tbl_Meals Where KategoriId=@p1",connection.baglanti());
            komut.Parameters.AddWithValue("@p1", kategoriid);
            SqlDataReader sqlData = komut.ExecuteReader();
            DataList2.DataSource = sqlData;
            DataList2.DataBind();
        }
    }
}