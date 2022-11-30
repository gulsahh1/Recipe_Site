﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RecipeSite
{
    public partial class Tarifler : System.Web.UI.Page
    {
        connection connection = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            SqlCommand komut = new SqlCommand("Select * From Tbl_Description where TarifDurum=0", connection.baglanti());
            SqlDataReader sqlData = komut.ExecuteReader();
            DataList1.DataSource = sqlData;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Description where TarifDurum=1", connection.baglanti());
            SqlDataReader sqlData2 = komut2.ExecuteReader();
            DataList2.DataSource = sqlData2;
            DataList2.DataBind();
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
    }
}