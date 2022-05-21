<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ToyotaCarList.aspx.cs" Inherits="CarSparePart.ToyotaCarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table  style="margin:0 auto;">
          <tr>
        <td colspan="3" style="text-align:center">
            <asp:Label ID="Label7" runat="server" Text="Select Car Brand" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </td>
    </tr>
    <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/CarImages/Fortuner.jpeg" Height="150px" Width="230px" OnClick="ImageButton11_Click" /> <br />
             <asp:Label ID="Label1" runat="server" Text="Fortuner" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/CarImages/InnovaCrystaCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton12_Click" /><br />
              <asp:Label ID="Label2" runat="server" Text="Innova Crysta" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/CarImages/CamryCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton13_Click" /><br />
 <asp:Label ID="Label3" runat="server" Text="Camry" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
          <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/CarImages/Hilux.jpeg" Height="150px" Width="230px" OnClick="ImageButton14_Click"  /> <br />
             <asp:Label ID="Label4" runat="server" Text="Hilux" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/CarImages/UrbanCruiserCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton15_Click" /><br />
              <asp:Label ID="Label5" runat="server" Text="Urban Cruiser" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/CarImages/GlanzaCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton16_Click" /><br />
 <asp:Label ID="Label6" runat="server" Text="Glanza" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
</table>
</asp:Content>
