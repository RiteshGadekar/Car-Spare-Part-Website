using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSparePart
{
    public partial class ToyotaCarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Session["T"] = Label1.Text;
            Response.Redirect("ToyotaCarParts.aspx?name=" + Session["T"].ToString());
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            Session["T"] = Label2.Text;
            Response.Redirect("ToyotaCarParts.aspx?name=" + Session["T"].ToString());
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Session["T"] = Label3.Text;
            Response.Redirect("ToyotaCarParts.aspx?name=" + Session["T"].ToString());
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            Session["T"] = Label4.Text;
            Response.Redirect("ToyotaCarParts.aspx?name=" + Session["T"].ToString());
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            Session["T"] = Label5.Text;
            Response.Redirect("ToyotaCarParts.aspx?name=" + Session["T"].ToString());
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            Session["T"] = Label6.Text;
            Response.Redirect("ToyotaCarParts.aspx?name=" + Session["T"].ToString());
        }
    }
}