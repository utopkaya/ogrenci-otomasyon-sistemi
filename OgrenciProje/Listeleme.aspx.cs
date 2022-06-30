using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciProje
{
    public partial class Listeleme : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-10OU3K0; Initial Catalog=DbOgrenciler; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlData = new SqlDataAdapter("SELECT * FROM Ogrenciler", sqlCon);
                DataTable dtb1 = new DataTable();
                sqlData.Fill(dtb1);
                Ogrenciler.DataSource = dtb1;
                Ogrenciler.DataBind();
            }
        }
    }
}