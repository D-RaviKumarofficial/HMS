using System;
using MySql.Data.MySqlClient;
using System.Configuration;

public partial class Frontend_OrderPage : System.Web.UI.Page
{
    // Connection string to connect to your MySQL database
    private string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        // No special action required on page load for this example
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Validate inputs
        if (string.IsNullOrEmpty(txtMedicineName.Text) || string.IsNullOrEmpty(txtCustomerName.Text) ||
            string.IsNullOrEmpty(txtQuantity.Text) || string.IsNullOrEmpty(txtContact.Text))
        {
            // Display an error if any field is empty
            Response.Write("<script>alert('Error: All fields must be filled out.');</script>");
            return;
        }

        int quantity;
        // Validate that quantity is a valid number
        if (!int.TryParse(txtQuantity.Text, out quantity))
        {
            Response.Write("<script>alert('Error: Invalid input for Quantity. Please enter a valid number.');</script>");
            return;
        }

        string medicineName = txtMedicineName.Text;
        string customerName = txtCustomerName.Text;
        string contactNumber = txtContact.Text;

        // Insert the order into the database
        using (MySqlConnection conn = new MySqlConnection(connectionString))
        {
            try
            {
                conn.Open();
                string query = "INSERT INTO orders (medicine_name, customer_name, quantity, contact_number) VALUES (@medicineName, @customerName, @quantity, @contactNumber)";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@medicineName", medicineName);
                cmd.Parameters.AddWithValue("@customerName", customerName);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@contactNumber", contactNumber);

                cmd.ExecuteNonQuery();

                // Display a success message
                Response.Write("<script>alert('Order Submitted Successfully!');</script>");
            }
            catch (Exception ex)
            {
                // Handle exceptions (e.g., connection errors)
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}
