using System;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Frontend_AddStock : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Retrieve user input
        string dosageForm = txtDosageForm.Text.Trim();
        string dosageStrength = txtDosageStrength.Text.Trim();
        int quantityAvailable;
        decimal price;
        DateTime expirationDate;

        // Basic validation
        if (string.IsNullOrEmpty(dosageForm) || string.IsNullOrEmpty(dosageStrength) ||
            !int.TryParse(txtQuantityAvailable.Text, out quantityAvailable) ||
            !decimal.TryParse(txtPrice.Text, out price) ||
            !DateTime.TryParse(txtExpirationDate.Text, out expirationDate))
        {
            // Display an error message if validation fails
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please fill in all fields correctly.');", true);
            return;
        }

        // Get the connection string from the web.config file
        string connStr = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

        // Insert data into the database
        try
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                conn.Open();

                // Define the insert query
                string query = "INSERT INTO pharmacy_stock (dosage_form, dosage_strength, quantity_available, expiration_date, price) " +
                               "VALUES (@DosageForm, @DosageStrength, @QuantityAvailable, @ExpirationDate, @Price)";

                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@DosageForm", dosageForm);
                    cmd.Parameters.AddWithValue("@DosageStrength", dosageStrength);
                    cmd.Parameters.AddWithValue("@QuantityAvailable", quantityAvailable);
                    cmd.Parameters.AddWithValue("@ExpirationDate", expirationDate);
                    cmd.Parameters.AddWithValue("@Price", price);

                    // Execute the query
                    int result = cmd.ExecuteNonQuery();

                    // Check if data was inserted successfully
                    if (result > 0)
                    {
                        // Display success message and redirect
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Stock entry added successfully!'); window.location='../Default.aspx';", true);
                    }
                    else
                    {
                        // Display error message if no rows were affected
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Failed to add stock. Please try again.');", true);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            // Display the exception message in an alert box
            string errorMessage = ex.Message.Replace("'", "\\'"); // Escaping single quotes for JS alert
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('An error occurred: " + errorMessage + "');", true);
        }
    }
}
