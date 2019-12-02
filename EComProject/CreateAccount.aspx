<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="EComProject.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create an Account</title>
 <style>
#header{
background-color:lightyellow;
border-style:solid;
color:black;
text-align:left;
padding:30px;
font-size: 200%;
margin-bottom: 0 px;
}

.navTab{
color:black;
}

#p1{
background-color:paleturquoise;
border-style:solid;
padding:10px;
}
section{
    background-color:lightyellow
}
a:hover{
text-decoration:underline;
}

body{
background-color:lightslategray;
}
footer{
background-color:paleturquoise;
color:black;
}
     .auto-style1 {
         width: 100%;
     }
     .auto-style2 {
         width: 648px;
     }
     .auto-style3 {
         width: 84px;
     }
     .auto-style5 {
         width: 202px;
     }
     .auto-style6 {
         width: 34px;
     }
     .auto-style7 {
         width: 84px;
         height: 26px;
     }
     .auto-style8 {
         width: 34px;
         height: 26px;
     }
     .auto-style9 {
         width: 202px;
         height: 26px;
     }
 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
        <p id="header" class="auto-style2">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/book.png" Width="90px" CssClass="auto-style1" Height="50px" ImageAlign="Left"/>World Library</p>
    </div>
        <nav id="p1">
            <a class="navTab" href="Home.aspx"> Home </a>&emsp;|&emsp;
            <a class="navTab" href="CreateAccount.aspx"> Create an Account </a>&emsp;|&emsp;
            <a class="navTab" href="shopCart.aspx">Shop Cart</a><asp:ImageButton ID="ShopCart" runat="server" Height="29px" ImageUrl="https://cdn0.iconfinder.com/data/icons/shopping-cart-26/1000/Shopping-Basket-03-512.png" Width="43px" PostBackUrl="~/shopCart.aspx"/>
        </nav>
        </div>
    <section>

        <h1>If you wish to order our books, please create an account first then order!:</h1><br />
        <br />

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">First Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please write your first name." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLName" ErrorMessage="Please write your last name." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please write your email." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">User Name:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="validuser" runat="server" ControlToValidate="txtUser" ErrorMessage="Please write a user name of your choice." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" ErrorMessage="Please write your pasword" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Password" ErrorMessage="Please make your password no less than 10 characters" Font-Bold="True" ForeColor="Red" MaximumValue="10" MinimumValue="10"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Confirm" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Confirm" ErrorMessage="Please make sure the passwords match" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Address:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="Please write your address." Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Zip Code:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtZip" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtZip" ErrorMessage="Zip Code Should Be 5 Numbers" Font-Bold="True" ForeColor="Red" MaximumValue="5"></asp:RangeValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please write your zip code" Font-Bold="True" ForeColor="Red" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="submit" />
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>

    </section>
    </form>
    <footer> This Website is owned by its creators </footer>
</body>
</html>
