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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
           

        }
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPUGHDC\SQLEXPRESS;Initial Catalog=CarSparePart;Integrated Security=True;Pooling=False");
        protected void Button1_Click1(object sender, EventArgs e)
        {
            
            
                con.Open();
            if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
            {
                Response.Redirect("ShowOrders.aspx");
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Register1 where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
                DataSet ds = new DataSet();

                da.Fill(ds, "Register1");
                if (ds.Tables["Register1"].Rows.Count == 1)
                {
                    Session["email"] = TextBox1.Text;
                    Session["fname"] = ds.Tables[0].Rows[0]["Fname"].ToString();
                    Session["lname"] = ds.Tables[0].Rows[0]["Lname"].ToString();
                    Session["address"] = ds.Tables[0].Rows[0]["Address"].ToString();
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect UserName and Password')</script>");

                }
            }
                con.Close();
            
        }
    }
}