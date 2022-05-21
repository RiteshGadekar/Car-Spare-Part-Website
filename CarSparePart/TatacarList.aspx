<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="TatacarList.aspx.cs" Inherits="CarSparePart.TatacarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 366px;
        }
    </style>
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
            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/CarImages/Safari.jpeg" Height="150px" Width="230px" OnClick="ImageButton11_Click" /> <br />
             <asp:Label ID="Label1" runat="server" Text="Safari" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="text-align:center" class="auto-style1">
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/CarImages/NexonCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton12_Click"/><br />
              <asp:Label ID="Label2" runat="server" Text="Nexon" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/CarImages/Harrier.jpeg" Height="150px" Width="230px" OnClick="ImageButton13_Click" /><br />
 <asp:Label ID="Label3" runat="server" Text="Harrier" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
          <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/CarImages/PunchCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton14_Click"/> <br />
             <asp:Label ID="Label4" runat="server" Text="Punch" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="text-align:center" class="auto-style1">
            <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/CarImages/TiagoCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton15_Click" /><br />
              <asp:Label ID="Label5" runat="server" Text="Tiago" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/CarImages/TigorCar.jpeg" Height="150px" Width="230px" OnClick="ImageButton16_Click" /><br />
 <asp:Label ID="Label6" runat="server" Text="Tigor" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
</table>

</asp:Content>
