<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MahindraCarList.aspx.cs" Inherits="CarSparePart.MahindraCarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tr1{
            background:#00c3ff;
            background:-webkit-linear-gradient(to right,#ffff1c,#00c3ff);
            background:linear-gradient(to right,#ffff1c,#00c3ff);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  style="margin:0 auto;">
          <tr class="tr1">
        <td colspan="3" style="text-align:center">
            <asp:Label ID="Label7" runat="server" Text="Select Car Model" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </td>
    </tr>
    <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/CarImages/Xuv700.jpeg" Height="150px" Width="230px" OnClick="ImageButton11_Click"/> <br />
             <asp:Label ID="Label1" runat="server" Text="XUV700" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/CarImages/Scorpio.jpeg" Height="150px" Width="230px" OnClick="ImageButton12_Click" /><br />
              <asp:Label ID="Label2" runat="server" Text="Scorpio" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/CarImages/Thar.jpeg" Height="150px" Width="230px" OnClick="ImageButton13_Click" /><br />
 <asp:Label ID="Label3" runat="server" Text="Thar" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
          <tr style="width:1098px; height:150px;">
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/CarImages/Tuv300.jpeg" Height="150px" Width="230px" OnClick="ImageButton14_Click"/> <br />
             <asp:Label ID="Label4" runat="server" Text="TUV300" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/CarImages/Xuv300.jpeg" Height="150px" Width="230px" OnClick="ImageButton15_Click"/><br />
              <asp:Label ID="Label5" runat="server" Text="XUV300" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/CarImages/Bolero.jpeg" Height="150px" Width="230px" OnClick="ImageButton16_Click"/><br />
 <asp:Label ID="Label6" runat="server" Text="Bolero" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
</table>

</asp:Content>
