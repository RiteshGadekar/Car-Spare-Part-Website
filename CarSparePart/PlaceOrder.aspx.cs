using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace CarSparePart
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPUGHDC\SQLEXPRESS;Initial Catalog=CarSparePart;Integrated Security=True;Pooling=False");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            String qry = "insert into CardDetails values('" + Session["OrderId1"] + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ",'"+TextBox6.Text+"')";
            SqlCommand cmd = new SqlCommand(qry, con);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<Script>alert('Your Order Placed Successfully')</script>");
            }
            else
            {
                Response.Write("<Script>alert('Your Order Not Placed Successfully')</script>");

            }
            con.Close();

        }
    }
}