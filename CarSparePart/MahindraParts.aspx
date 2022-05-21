<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="MahindraParts.aspx.cs" Inherits="CarSparePart.MahindraParts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .div1{
            background-image:linear-gradient(to right,Yellow,green)
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="div1" style="margin-left:auto;margin-right:auto;text-align:center">
 <asp:Label ID="Label4" runat="server" Font-Bold="true" Font-Size="X-Large"></asp:Label>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align:center; background-color:deepskyblue">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="Arial Black" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                 <tr>
                   <td style="text-align:center">
                       <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="1px" Height="279px" Width="278px" ImageUrl='<%# Eval("Pimage") %>' />
                   </td>
               </tr>
                 <tr>
                   <td style="text-align:center; background-color:deepskyblue">
                       <asp:Label ID="Label2" runat="server" Text="Price:Rs" Font-Bold="True" ForeColor="White" style="text-align:center" ></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" ForeColor="White" style="text-align:center" ></asp:Label>
                   </td>
               </tr>
                 <tr>
                   <td style="text-align:center">Quantity
                       <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>1</asp:ListItem>
                           <asp:ListItem>2</asp:ListItem>
                           <asp:ListItem>3</asp:ListItem>
                           <asp:ListItem>4</asp:ListItem>
                           <asp:ListItem>5</asp:ListItem>
                           <asp:ListItem></asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
                 <tr>
                   <td style="text-align:center">
                       <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" Width="160px" CommandArgument='<%# Eval("Productid") %>' CommandName="AddToCart" ImageUrl="~/images/CartButton.jpeg" />
                   </td>
               </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CarSparePartConnectionString %>" SelectCommand="SELECT [ProductId], [Pname], [Pdesc], [Pimage], [Pprice] FROM [MahindraParts]"></asp:SqlDataSource>

</asp:Content>
