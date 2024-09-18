using System;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Frontend_Register : System.Web.UI.Page
{
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        // Retrieve user input
        string name = txtName.Text.Trim();
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text;
        string confirmPassword = txtConfirmPassword.Text;

        // Basic validation
        if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
        {
            // Display an error message
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'Please fill in all fields.', 'error');", true);
            return;
        }

        if (password != confirmPassword)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'Passwords do not match.', 'error');", true);
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
                string query = "INSERT INTO users (Name, Email, Password) VALUES (@Name, @Email, @Password)";

                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password); // Consider hashing the password

                    // Execute the query
                    int result = cmd.ExecuteNonQuery();

                    // Check if data was inserted
                    if (result > 0)
                    {
                        // Redirect to login page or display success message
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Success', 'Registration successful!', 'success').then(() => window.location='../Default.aspx');", true);
                    }
                    else
                    {
                        // Display an error message if no rows were affected
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'Registration failed. No rows affected.', 'error');", true);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            // Display the exception message in an alert box
            string errorMessage = ex.Message.Replace("'", "\\'"); // Escaping single quotes for JS alert
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'An error occurred: " + errorMessage + "', 'error');", true);
        }
    }
}
