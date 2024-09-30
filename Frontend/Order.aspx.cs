using System;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls; // Add this line for GridView and GridViewCommandEventArgs

public partial class Frontend_AddStock : System.Web.UI.Page
{
    // Connection string to connect to your MySQL database
    private string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGridView();
        }
    }

    private void BindGridView()
    {
        using (MySqlConnection conn = new MySqlConnection(connectionString))
        {
            try
            {
                conn.Open();
                string query = "SELECT Id, dosage_form, dosage_strength, quantity_available, expiration_date, price FROM pharmacy_stock";
                MySqlCommand cmd = new MySqlCommand(query, conn);

                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvPharmacyStock.DataSource = dt;
                gvPharmacyStock.DataBind();
            }
            catch (Exception ex)
            {
                // Handle exceptions (optional: log the error)
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
    protected void gvPharmacyStock_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Order")
        {
            // Get the row index of the clicked button
            int rowIndex = Convert.ToInt32(e.CommandArgument);

            // Redirect to the desired page (e.g., OrderDetails.aspx)
            Response.Redirect("Order_Details.aspx");
        }
    }


    
}
