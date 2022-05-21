<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="CarSparePart.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CarSparePart cart</title>  
     
    <style type="text/css">
        body {
    margin: 0px;
    padding: 0px;
    font-family: Arial, Helvetica, sans-serif;
     background-image: url("images/LoginBackground.jpg");
}
        .auto-style1 {
            width: 800px;
            height: 600px;
        }
        #Button1{
margin-left:300px;
padding:10px;
width:250px;
border-radius:7px;
color:white;
background-color:deeppink;
}
         #Button1:hover {
        background-color: #C71585;
    }
        #TextBox1, #TextBox2, #TextBox3, #TextBox4, #TextBox5, #TextBox6, #TextBox7 {
    width: 300px;
    height: 30px;
    border-radius:7px;
    padding-left: 8px;
    margin-left:30%;
}
        #table1 {
    align-content: center;
    background-image:linear-gradient(to bottom right,red,yellow);
}
h2{
    text-align:center;
}
.registration {
    width: 800px;
    height: 600px;
    margin: auto;
    padding: 80px;
     background-image:linear-gradient(to bottom right,white,black);
    border-radius: 15px;
}

.gender1 {
    margin-left: 30%;
}

#Label3, #Label4, #Label5, #Label6, #Label7, #Label8, #Label9, #Label10 {
    padding-left: 35%
}
    </style>
</head>
<body>
   
    <form id="form1" runat="server">
      <div class="registration">

          <table id="table1" class="auto-style1">
              <tr>
                  <td colspan="2"> 
                      <h2>Create a new account</h2>
                  </td>            
              </tr>
              <tr>
                  <td>
                      <b><asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label></b>          
                  </td>
                 
                  <td >
                      <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter First Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="First Name Is Empty" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                 <b><asp:Label ID="Label4" runat="server" Text="Last Name"></asp:Label></b> 
                      </td>
                  <td> 
                      <asp:TextBox ID="TextBox2" runat="server"  placeholder="Enter Last Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Last Name Is Empty" ForeColor="Red">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                 <b><asp:Label ID="Label5" runat="server" Text="Enter Email Id"></asp:Label></b> 
                      </td>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server"  placeholder="Enter Email Id"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email Id Is Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                 <b><asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label></b> 
                      </td>
                  <td>
                      <div class="gender1">
                      <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender" />
                      <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="Gender" />
                      </div>
                     
                  </td>
              </tr>
              <tr>
                  <td>
                 <b><asp:Label ID="Label7" runat="server" Text="Enter Address"></asp:Label></b> 
                      </td>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" placeholder="Enter Address"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Adress Is Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                 <b><asp:Label ID="Label8" runat="server" Text="Enter Phone No."></asp:Label></b> 
                      </td>
                  <td>
                      <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Phone Number"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Phone_No Is Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                  <td>
                 <b><asp:Label ID="Label9" runat="server" Text="Enter Password"></asp:Label></b> 
                      </td>
                  <td>
                      <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Password Is Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                  </td>
              </tr>
              <tr>
                
                       <td>
                 <b><asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label></b> 
                      </td>
                  <td>
                      <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" placeholder="Re-enter Password "></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Confirmed Password Is Required" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Enter Correct Password" ForeColor="Red">*</asp:CompareValidator>
                  </td>
              </tr>
              <tr style="text-align:center">
                  <td colspan="2">
                      <asp:CheckBox ID="CheckBox1" runat="server" /><asp:Label ID="Label1" runat="server" Text="I agree to the " Font-Bold="true"></asp:Label><a href="Main.aspx" >Terms & Conditions</a>
                  </td>
              </tr>
              <tr>
                  <td colspan="2">
                      <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                      <br />
                  </td>                 
              </tr>
               <tr style="text-align:center">
                  <td colspan="2">
                      <asp:Label ID="Label2" runat="server" Text="Already have an account? " Font-Bold="true"></asp:Label><a href="Login.aspx" >Sign in</a>
                  </td>
              </tr>
             
              <tr>
                  <td colspan="2">
                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                  </td>
                  
              </tr>
          </table>

      </div>
    </form>
</body>
</html>
