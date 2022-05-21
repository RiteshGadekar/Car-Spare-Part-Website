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
    public partial class AddtoCart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                Session["addproduct"] = "false";
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pname");
                dt.Columns.Add("pprice");
                dt.Columns.Add("quantity");
                dt.Columns.Add("tprice");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPUGHDC\SQLEXPRESS;Initial Catalog=CarSparePart;Integrated Security=True;Pooling=False");
                        //String myquery = "select * from Endproduct where ProductId=" + Request.QueryString["id"];
                       String my = "select * from Endproduct where ProductId=" + Request.QueryString["id"]+" UNION ALL select * from Toyotaparts where ProductId=" + Request.QueryString["id"]+ "UNION ALL select * from Tataparts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from SuzukiParts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from HyundaiParts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from MahindraParts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from SkodaParts where ProductId=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = my;
                        cmd.Connection = con;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["pprice"].ToString();
                        int pprice = Convert.ToInt16(ds.Tables[0].Rows[0]["pprice"].ToString());
                        dr["quantity"] = Request.QueryString["quantity"];
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = pprice * quantity;
                        dr["tprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Response.Redirect("AddtoCart.aspx");

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPUGHDC\SQLEXPRESS;Initial Catalog=CarSparePart;Integrated Security=True;Pooling=False");
                        //SqlDataAdapter da = new SqlDataAdapter("select * from Endproduct where ProductId=" + Request.QueryString["id"], con);
                        //String my = "select * from Endproduct UNION ALL select * from Toyotaparts where ProductId=" + Request.QueryString["id"];
                        SqlDataAdapter da = new SqlDataAdapter("select * from Endproduct where ProductId=" + Request.QueryString["id"] + " UNION ALL select * from Toyotaparts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from Tataparts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from SuzukiParts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from HyundaiParts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from MahindraParts where ProductId=" + Request.QueryString["id"] + "UNION ALL select * from SkodaParts where ProductId=" + Request.QueryString["id"], con);

                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] =sr + 1;
                        dr["productid"] = ds.Tables[0].Rows[0]["productid"].ToString();
                        dr["Pimage"] = ds.Tables[0].Rows[0]["Pimage"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["pname"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["pprice"].ToString();
                        int pprice = Convert.ToInt16(ds.Tables[0].Rows[0]["pprice"].ToString());
                        dr["quantity"] = Request.QueryString["quantity"];
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = pprice * quantity;
                        dr["tprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Response.Redirect("AddtoCart.aspx");
                    }
                   
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
            }
            
            Session["OrderDate"] = DateTime.Now.ToShortDateString();
            Orderid();
        }
       

        public void Orderid()
        {
            string alpha = "abCdefghIjklmNopqrStuvwXyz123456789";
            Random r = new Random();
            char[] myArray = new char[5];
            for (int i = 0; i < 5; i++)
            {
                myArray[i] = alpha[(int)(35 * r.NextDouble())];
            }
            string orderid;
            orderid = "Order_Id:" + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() +new string(myArray) +DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["OrderId1"] = orderid;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;

                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for(int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();

            }
            Session["buyitems"] = dt;
            Response.Redirect("AddtoCart.aspx");
        }
       
        
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
            DataTable dt;
            dt = (DataTable)Session["buyitems"];
            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JPUGHDC\SQLEXPRESS;Initial Catalog=CarSparePart;Integrated Security=True;Pooling=False");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into OrderDetails(OrderId,Sno,ProductId,ProductName,Price,Quantity,OrderDate) values('"+Session["OrderId1"]+"',"+dt.Rows[i]["sno"]+ "," + dt.Rows[i]["productid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"] + "," + dt.Rows[i]["quantity"] + ",'"+Session["OrderDate"]+"')",con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (GridView1.Rows.Count.ToString() == "0")
            {
                Response.Write("<script>alert('Your Cart is empty')</script>");
            }
            else
            {
                Response.Redirect("PlaceOrder.aspx");
            }
        }
    }
}