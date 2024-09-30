using System;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls; // Add this directive

public partial class Frontend_BookedOrders : System.Web.UI.Page
{
    private string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindOrderGrid();
        }
    }

    private void BindOrderGrid()
    {
        using (MySqlConnection conn = new MySqlConnection(connectionString))
        {
            try
            {
                conn.Open();
                string query = "SELECT id, medicine_name, customer_name, quantity, contact_number FROM orders"; // Adjust the query as per your table structure
                MySqlCommand cmd = new MySqlCommand(query, conn);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gridOrders.DataSource = dt;
                gridOrders.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }

   

    
}
