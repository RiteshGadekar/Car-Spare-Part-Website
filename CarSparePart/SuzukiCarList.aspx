﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="SuzukiCarList.aspx.cs" Inherits="CarSparePart.SuzukiCarList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 366px;
            height: 150px;
        }
    </style>
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
            <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/CarImages/Ertiga.jpeg" Height="150px" Width="230px" OnClick="ImageButton11_Click"/> <br />
             <asp:Label ID="Label1" runat="server" Text="Ertiga" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="width:366px; text-align:center">
            <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/CarImages/Brezza.jpeg" Height="150px" Width="230px" OnClick="ImageButton12_Click" /><br />
              <asp:Label ID="Label2" runat="server" Text="Brezza" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="width:366px; text-align:center">
             <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/CarImages/XL6.jpeg" Height="150px" Width="230px" OnClick="ImageButton13_Click" /><br />
 <asp:Label ID="Label3" runat="server" Text="XL6" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
          <tr style="width:1098px; ">
        <td  style="text-align:center" class="auto-style1">
            <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/CarImages/Scross.jpeg" Height="150px" Width="230px" OnClick="ImageButton14_Click"/> <br />
             <asp:Label ID="Label4" runat="server" Text="Scross" Font-Bold="True" Font-Size="Large" ></asp:Label>
        </td>
        
         <td style="text-align:center" class="auto-style1">
            <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/CarImages/Swift.jpeg" Height="150px" Width="230px" OnClick="ImageButton15_Click"/><br />
              <asp:Label ID="Label5" runat="server" Text="Swift" Font-Bold="True" Font-Size="Large" ></asp:Label>
              </td>
         <td style="text-align:center" class="auto-style1">
             <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/CarImages/Ciaz.jpeg" Height="150px" Width="230px" OnClick="ImageButton16_Click"/><br />
 <asp:Label ID="Label6" runat="server" Text="Ciaz" Font-Bold="True" Font-Size="Large" ></asp:Label>          
         </td>
    </tr>
</table>
</asp:Content>
