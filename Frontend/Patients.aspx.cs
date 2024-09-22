using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;



public partial class Frontend_Patients : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        // Retrieve user input
        string name = txtName.Text.Trim();
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text;
        string confirmPassword = txtConfirmPassword.Text;
        string gender = ddlGender.SelectedValue;
        string height = txtHeight.Text.Trim();
        string weight = txtWeight.Text.Trim();
        string bloodGroup = ddlBloodGroup.SelectedValue;
        string medicalProblems = txtMedicalProblems.Text.Trim();
        string age = txtAge.Text.Trim();
        string bp = ddlBP.SelectedValue;
        string sugar = ddlSugar.SelectedValue;
        string phone = txtPhone.Text.Trim();

        // Basic validation
        if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword) ||
            string.IsNullOrEmpty(gender) || string.IsNullOrEmpty(height) || string.IsNullOrEmpty(weight) ||
            string.IsNullOrEmpty(bloodGroup) || string.IsNullOrEmpty(age) || string.IsNullOrEmpty(bp) ||
            string.IsNullOrEmpty(sugar) || string.IsNullOrEmpty(phone))
        {
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
                string query = "INSERT INTO Patients (Name, Email, Password, Gender, Height, Weight, BloodGroup, MedicalProblems, Age, BP, Sugar, Phone) " +
                               "VALUES (@Name, @Email, @Password, @Gender, @Height, @Weight, @BloodGroup, @MedicalProblems, @Age, @BP, @Sugar, @Phone)";

                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password); // Consider hashing the password
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Height", height);
                    cmd.Parameters.AddWithValue("@Weight", weight);
                    cmd.Parameters.AddWithValue("@BloodGroup", bloodGroup);
                    cmd.Parameters.AddWithValue("@MedicalProblems", medicalProblems);
                    cmd.Parameters.AddWithValue("@Age", age);
                    cmd.Parameters.AddWithValue("@BP", bp);
                    cmd.Parameters.AddWithValue("@Sugar", sugar);
                    cmd.Parameters.AddWithValue("@Phone", phone);

                    // Execute the query
                    int result = cmd.ExecuteNonQuery();

                    // Check if data was inserted
                    if (result > 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Success', 'Registration successful!', 'success').then(() => window.location='HomePage.aspx');", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'Registration failed. No rows affected.', 'error');", true);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            string errorMessage = ex.Message.Replace("'", "\\'"); // Escaping single quotes for JS alert
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "Swal.fire('Error', 'An error occurred: " + errorMessage + "', 'error');", true);
        }
    }
}