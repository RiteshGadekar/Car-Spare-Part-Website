<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="FordCarList.aspx.cs" Inherits="CarSparePart.FordCarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
 td #Image1,#Image2,#Image3{
    display:block;
    margin-left:auto;
    margin-right:auto;
}
 
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table  style="margin:0 auto;">
           <tr>
        <td colspan="3" style="text-align:center">
            <asp:Label ID="Label4" runat="server" Text="Select Car Model" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </td>
    </tr>
    <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/EndeavourCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton1_Click"/> <br />
             <asp:Label ID="Label1" runat="server" Text="Endeavour" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Ecosport.jpeg" Height="150px" Width="230px" OnClick="ImageButton2_Click"/><br />
              <asp:Label ID="Label2" runat="server" Text="Ecosport" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/AspireCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton3_Click" /><br />
 <asp:Label ID="Label3" runat="server" Text="Aspire" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
</table>
</asp:Content>
