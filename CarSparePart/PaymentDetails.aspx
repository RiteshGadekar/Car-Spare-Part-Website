<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="CarSparePart.PaymentDetails" %>
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
                <asp:Label ID="Label1" runat="server" Text="Payment Details" Font-Bold="True" Font-Size="X-Large"></asp:Label>

            </td>
        </tr>
    </table>
  
       <div style="text-align:center; margin:0 auto;">
      <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BorderColor="Black" BorderWidth="5px" EmptyDataText="No Product Available in Cart" Font-Bold="True" Width="1200px"  CssClass="grid1" >
          <Columns>
              <asp:BoundField DataField="OrderId" HeaderText=" Order Id"  />
              <asp:BoundField DataField="FirstName" HeaderText="First Name" />
              <asp:BoundField DataField="LastName" HeaderText="Last Name" />
              <asp:BoundField DataField="CardNo" HeaderText="Card NO." />
              <asp:BoundField DataField="ExpiryDate" HeaderText="Expiry Date" />
              <asp:BoundField DataField="CVV" HeaderText="CVV" />
              <asp:BoundField DataField="BillingAddress" HeaderText="BillingAddress" />
          </Columns>
           <HeaderStyle BackColor="Aqua" Font-Bold="True" Font-Size="X-Large"   />
          <RowStyle HorizontalAlign="Center" Font-Size="Large" />
      </asp:GridView> 
      
  </div>
   
    
</asp:Content>
