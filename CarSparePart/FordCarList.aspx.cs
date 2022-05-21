using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarSparePart
{
    public partial class FordCarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["F"] = Label1.Text;
            Response.Redirect("EndeavourParts.aspx?name=" + Session["F"].ToString());
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["F"] = Label2.Text;
            Response.Redirect("EndeavourParts.aspx?name=" + Session["F"].ToString());
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["F"] = Label3.Text;
            Response.Redirect("EndeavourParts.aspx?name=" + Session["F"].ToString());
        }
    }
}