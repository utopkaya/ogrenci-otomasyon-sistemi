using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OgrenciProje
{
    public partial class YeniKayit : System.Web.UI.Page
    {

        string connectionString = @"Data Source=DESKTOP-10OU3K0; Initial Catalog=DbOgrenciler; Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kaydetButton_Click(object sender, EventArgs e)
        {
            durumLabel.Text = "Butona tiklandi!";
        }

        void PopulateGridview()
        {
            DataTable _dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Ogrenciler", sqlCon);

                sqlDa.Fill(_dtbl);
            }

            if (_dtbl.Rows.Count > 0)
            {
                GridView1.DataSource = _dtbl;
                GridView1.DataBind();
            }
            else
            {
                _dtbl.Rows.Add(_dtbl.NewRow());
                GridView1.DataSource = _dtbl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = _dtbl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = "KANKA KAYIT YOK KANKAAAAA!";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO PhoneBook (Firstname, LastName, Contact, Email) VALUES (@FirstName, @LastName, @Contact, @Email)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@FirstName", (GridView1.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@LastName", (GridView1.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Contact", (GridView1.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Email", (GridView1.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        durumLabel.Text = "Yeni Kayıt Eklendi!";
                        durumLabel.Text = "";
                    }
                }
            }
            catch (Exception ex)
            {
                durumLabel.Text = "";
                durumLabel.Text = "";
            }
        }
    }
}