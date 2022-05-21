<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CarSparePart.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table  style="margin:0 auto;">
    <tr>
        <td colspan="3" style="text-align:center">
            <asp:Label ID="Label4" runat="server" Text="Select Car Brand" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </td>
    </tr>
    <tr style="width:1098px; height:150px;">      
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/FordLogo.jpeg" Height="150px" Width="230px" OnClick="ImageButton1_Click" /> 
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ford" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/ToyotaLogo.jpeg" Height="150px" Width="230px" OnClick="ImageButton2_Click" />
             <br />
               <asp:Label ID="Label2" runat="server" Text="Toyota" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/TataLogo.png" Height="150px" Width="230px" OnClick="ImageButton3_Click" />
                  <br />
              <asp:Label ID="Label3" runat="server" Text="Tata" Font-Bold="True" Font-Size="Large" ></asp:Label>
         </td>
    </tr>
         <tr style="width:1098px; height:150px;">      
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/CarImages/SuzukiLogo.jpeg" Height="150px" Width="230px" OnClick="ImageButton4_Click"/> 
            <br />
            <asp:Label ID="Label5" runat="server" Text="Maruti Suzuki" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/CarImages/MahindraLogo.png" Height="150px" Width="230px" OnClick="ImageButton5_Click"/>
             <br />
               <asp:Label ID="Label6" runat="server" Text="Mahindra" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/CarImages/HyundaiLogo.jpeg" Height="150px" Width="230px" OnClick="ImageButton6_Click" />
                  <br />
              <asp:Label ID="Label7" runat="server" Text="Hyundai" Font-Bold="True" Font-Size="Large" ></asp:Label>
         </td>
    </tr>
        <tr style="width:1098px; height:150px;">      
        <td  style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/CarImages/KiaLogo.jpeg" Height="150px" Width="230px" OnClick="ImageButton7_Click"/> 
            <br />
            <asp:Label ID="Label8" runat="server" Text="KIA" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/CarImages/MGLogo.jpeg" Height="150px" Width="230px" OnClick="ImageButton8_Click"/>
             <br />
               <asp:Label ID="Label9" runat="server" Text="MG" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/CarImages/SkodaLogo.png" Height="150px" Width="230px" OnClick="ImageButton9_Click"/>
                  <br />
              <asp:Label ID="Label10" runat="server" Text="Skoda" Font-Bold="True" Font-Size="Large" ></asp:Label>
         </td>
    </tr>
</table>
  
</asp:Content>
