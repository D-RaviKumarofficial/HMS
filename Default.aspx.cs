using System;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Code to run on page load, if needed
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // Debugging output
        //Response.Write("Button clicked"); 

        // Retrieve user input
        string username = txtUsername.Text.Trim();
        string password = txtPassword.Text;

        // Basic validation
        if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
        {
            // Display an error message
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'Please enter both username and password.', 'error');", true);
            return;
        }

        // Get the connection string from the web.config file
        string connStr = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

        // Authenticate user
        try
        {
            using (MySqlConnection conn = new MySqlConnection(connStr))
            {
                conn.Open();

                // Define the query to check user credentials
                string query = "SELECT COUNT(*) FROM users WHERE Email = @Email AND Password = @Password";
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", username);
                    cmd.Parameters.AddWithValue("@Password", password); // Ensure passwords are hashed and compared securely

                    int userCount = Convert.ToInt32(cmd.ExecuteScalar());

                    if (userCount > 0)
                    {
                        // Redirect to the welcome page or dashboard
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Success', 'Login successful!', 'success').then(() => window.location='Frontend/HomePage.aspx');", true);
                    }
                    else
                    {
                        // Display an error message if login failed
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'Invalid username or password.', 'error');", true);
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
