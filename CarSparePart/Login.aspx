<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CarSparePart.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Login Page</title>
    <style>
        body {
    margin: 0px;
    padding: 0px;
    padding-top: 100px;
    background-image: url("images/LoginBackground.jpg");
    font-family: Arial, Helvetica, sans-serif;
}
        #Button1 {
    width: 310px;
    height: 30px;
    border-radius: 7px;
    color: white;
    
    background-color:deeppink;
    
}
         #Button1:hover {
        background-color: #C71585;
    }
         h2 {
    margin: 0px;
}
.login {
    width: 300px;
    height: 350px;
    margin: auto;
    padding: 80px;
    background: white;
    border-radius: 7px;
    background-image:linear-gradient(to bottom right,red,yellow);
}
#TextBox1, #TextBox2 {
    width: 300px;
    height: 30px;
    margin-top: 5px;
    border-radius: 7px;
    padding-left: 8px;
}

    </style>
</head>
<body>
 <form id="form1" runat="server">
   <div class="login">        
       <asp:Label ID="Label4" runat="server" Text="Login" Font-Size="X-Large" Font-Bold="true"></asp:Label>
       <br/><br/>
       <asp:Label ID="Label1" runat="server" Text="Email" Font-Bold="true"></asp:Label>
       <br/>
       <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Email"></asp:TextBox><br /><br />
       <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="true"></asp:Label>   <br/>
       <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Password"></asp:TextBox><br /><br />
       <asp:CheckBox ID="CheckBox1" runat="server" /> <b>Remember me?</b><br /><br />
       <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click1" Font-Bold="true" /><br /><br />
       <asp:Label ID="Label3" runat="server" Text="Not registered?" Font-Bold="true"></asp:Label><a href="Main.aspx">Create an account</a>  
   </div>  
 </form>
</body>
</html>
