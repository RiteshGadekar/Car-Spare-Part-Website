<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ShowOrders.aspx.cs" Inherits="CarSparePart.ShowOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid1{
            margin-left:auto;
            margin-right:auto;
              background:#00c3ff;
           
            background:linear-gradient(to right,red,yellow);
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="margin:0 auto;">
        <tr style="height:40px;text-align:center">
            <td>
                <asp:Label ID="Label1" runat="server" Text="Order Details" Font-Bold="True" Font-Size="X-Large"></asp:Label>

            </td>
        </tr>
    </table>
  <div style="text-align:center; margin:0 auto;">
      <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BorderColor="Black" BorderWidth="5px" EmptyDataText="No Product Available in Cart" Font-Bold="True" Width="1200px"  CssClass="grid1" >
          <Columns>
              <asp:BoundField DataField="OrderId" HeaderText=" Order Id"  />
              <asp:BoundField DataField="Sno" HeaderText="Sno" />
              <asp:BoundField DataField="ProductId" HeaderText="ProductId" />
              <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
              <asp:BoundField DataField="Price" HeaderText="Price" />
              <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
              <asp:BoundField DataField="OrderDate" HeaderText="Order Date" />
          </Columns>
           <HeaderStyle BackColor="Aqua" Font-Bold="True" Font-Size="X-Large"   />
          <RowStyle HorizontalAlign="Center" Font-Size="X-Large" />
      </asp:GridView> 
  </div>
    
</asp:Content>
