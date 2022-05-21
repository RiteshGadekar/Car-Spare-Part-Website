using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSparePart
{
    public partial class MGCarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Session["Ta"] = Label1.Text;
            Response.Redirect("TataParts.aspx?name=" + Session["Ta"].ToString());
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            Session["Ta"] = Label2.Text;
            Response.Redirect("TataParts.aspx?name=" + Session["Ta"].ToString());
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Session["Ta"] = Label3.Text;
            Response.Redirect("TataParts.aspx?name=" + Session["Ta"].ToString());
        }
    }
}