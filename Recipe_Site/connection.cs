using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace RecipeSite
{
    public class connection
    {
        public SqlConnection baglanti()
        {
            SqlConnection sqlConnection = new SqlConnection("Data Source=DESKTOP-CASO95I\\SQLEXPRESS;Initial Catalog=Dbo_recipe;Integrated Security=True");
            sqlConnection.Open();
            return sqlConnection;
        }
    }
}