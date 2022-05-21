using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSparePart
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Label4.Text = "Logged in as:" + Session["email"].ToString();

            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random run=new Random();
            int i = run.Next(1, 5);
            Image2.ImageUrl = "~/images/"+i.ToString()+".jpeg";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}