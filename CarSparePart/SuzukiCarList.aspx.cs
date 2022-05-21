using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSparePart
{
    public partial class SuzukiCarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Session["Su"] = Label1.Text;
            Response.Redirect("SuzukiParts.aspx?name=" + Session["Su"].ToString());
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            Session["Su"] = Label2.Text;
            Response.Redirect("SuzukiParts.aspx?name=" + Session["Su"].ToString());
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Session["Su"] = Label3.Text;
            Response.Redirect("SuzukiParts.aspx?name=" + Session["Su"].ToString());
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            Session["Su"] = Label4.Text;
            Response.Redirect("SuzukiParts.aspx?name=" + Session["Su"].ToString());
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            Session["Su"] = Label5.Text;
            Response.Redirect("SuzukiParts.aspx?name=" + Session["Su"].ToString());
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            Session["Su"] = Label6.Text;
            Response.Redirect("SuzukiParts.aspx?name=" + Session["Su"].ToString());
        }
    }
}