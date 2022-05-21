<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="SkodaCarList.aspx.cs" Inherits="CarSparePart.SkodaCarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  style="margin:0 auto;">
          <tr>
        <td colspan="3" style="text-align:center">
            <asp:Label ID="Label7" runat="server" Text="Select Car Model" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </td>
    </tr>
    <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/CarImages/Kushaq.jpeg" Height="150px" Width="230px" OnClick="ImageButton11_Click"/> <br />
             <asp:Label ID="Label1" runat="server" Text="Kushaq" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/CarImages/Slavia.jpeg" Height="150px" Width="230px" OnClick="ImageButton12_Click" /><br />
              <asp:Label ID="Label2" runat="server" Text="Slavia" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/CarImages/Octavia.jpeg" Height="150px" Width="230px" OnClick="ImageButton13_Click" /><br />
 <asp:Label ID="Label3" runat="server" Text="Octavia" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
        <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/CarImages/Kodiaq.jpeg" Height="150px" Width="230px" OnClick="ImageButton1_Click"/> <br />
             <asp:Label ID="Label4" runat="server" Text="Kodiaq" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
            </tr>
</table>
</asp:Content>
