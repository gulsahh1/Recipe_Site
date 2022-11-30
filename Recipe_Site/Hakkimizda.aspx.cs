using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Hakkimizda : System.Web.UI.Page
    {
        connection connection = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_About", connection.baglanti());
            SqlDataReader sqlData = komut.ExecuteReader();
            DataList2.DataSource = sqlData;
            DataList2.DataBind();
        }
    }
}