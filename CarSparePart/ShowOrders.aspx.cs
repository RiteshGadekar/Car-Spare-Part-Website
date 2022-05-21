using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace CarSparePart
{
    public partial class ShowOrders : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPUGHDC\SQLEXPRESS;Initial Catalog=CarSparePart;Integrated Security=True;Pooling=False");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Gvbind();
            }

        }
        protected void Gvbind()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from OrderDetails", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
            con.Close();
        }
    }
}