using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

public partial class Frontend_OldPatients : System.Web.UI.Page
{
   protected void btnSearch_Click(object sender, EventArgs e)
    {
        string patientName = txtSearchName.Text.Trim();
        if (string.IsNullOrEmpty(patientName))
        {
            ShowAlert("Please enter a patient name.", "error");
            return;
        }

        string connStr = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

        using (MySqlConnection conn = new MySqlConnection(connStr))
        {
            conn.Open();
            string query = "SELECT * FROM patients WHERE Name = @Name";
            using (MySqlCommand cmd = new MySqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Name", patientName);

                using (MySqlDataAdapter da = new MySqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        gvPatients.DataSource = dt;
                        gvPatients.DataBind();
                    }
                    else
                    {
                        ShowAlert("No patient found with the name '" + patientName + "'.", "error");
                    }
                }
            }
        }
    }

   private void ShowAlert(string message, string type)
   {
       string script = "Swal.fire({ icon: '" + type + "', title: '" + message + "' }).then((result) => { " +
                       "if (result.isConfirmed) { window.location = 'OldPatients.aspx'; } });";
       ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
   }

}