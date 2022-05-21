using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace CarSparePart
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPUGHDC\SQLEXPRESS;Initial Catalog=CarSparePart;Integrated Security=True;Pooling=False");
        protected void Button1_Click(object sender, EventArgs e)
        {
            string gender=string.Empty;
            if (RadioButton1.Checked)
            {
                gender = "M";
            }
            else if (RadioButton2.Checked)
            {
                gender = "F";
            }
            con.Open();
            String qry = "insert into Register1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','"+gender+"','" + TextBox4.Text + "','" + TextBox5.Text + "','"+TextBox6.Text+"','"+TextBox7.Text+"')";
            SqlCommand cmd = new SqlCommand(qry, con);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<Script>alert('Register Successfully')</script>");
            }
            else
            {
                Response.Write("<Script>alert('Register Not Successfully')</script>");

            }
            con.Close();


        }
    }
}