<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="CarSparePart.AddtoCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .grid1{
            margin-left:auto;
            margin-right:auto;
        }
        #Button1{
             background:linear-gradient(to right,white,green);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center; margin:0 auto;">
            <h2 style="text-decoration:underline overline wavy; color:#5f98f3 ">You Have Following Product In Your Cart</h2>
            <br /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Colonna MT" Font-Size="X-Large" Text="Continue Shopping" NavigateUrl="Home.aspx" ForeColor="Blue"></asp:HyperLink>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" BackColor="#FF33CC" BorderColor="Black" BorderWidth="5px" EmptyDataText="No Product Available in Cart" Font-Bold="True" Height="257px" ShowFooter="True" Width="1100px" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" CssClass="grid1">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr no">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="productid" HeaderText="Product ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                      
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                  <asp:BoundField DataField="tprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                  
                </Columns>
                <FooterStyle BackColor="#0066FF" ForeColor="White" />
                <HeaderStyle BackColor="DarkOrchid" ForeColor="White" />
            </asp:GridView>
           <br />
            
  <asp:Button ID="Button1" runat="server" Text="PlaceOrder" Font-Bold="True" Font-Size="Medium" Height="49px" Width="171px" BorderColor="#666666" OnClick="Unnamed1_Click" />
        </div>
    </form>
</body>
</html>
