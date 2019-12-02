<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productDetails.aspx.cs" Inherits="EComProject.productDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
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
    </form>
<footer> This Website is owned by its creators </footer>
</body>
</html>
