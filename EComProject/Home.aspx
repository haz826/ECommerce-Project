<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EComProject.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
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
    .auto-style1 {
        margin-left: 0px;
        margin-top: 0px;
    }
    .auto-style2 {
        height: 38px;
    }
    section{
        background-color:lightyellow;
    }
footer{
background-color:paleturquoise;
color:black;
}
    .auto-style3 {
        width: 100%;
    }
    .auto-style5 {
        width: 269px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <p id="header" class="auto-style2">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/book.png" Width="90px" CssClass="auto-style1" Height="50px" ImageAlign="Left"/>World Library</p>
    </div>
        <nav id="p1">
            <a class="navTab" href="Home.aspx"> Home </a>&emsp;|&emsp;
            <a class="navTab" href="CreateAccount.aspx"> Create an Account </a>&emsp;|&emsp;
            <a class="navTab" href="shopCart.aspx">Shop Cart</a><asp:ImageButton ID="ShopCart" runat="server" Height="29px" ImageUrl="https://cdn0.iconfinder.com/data/icons/shopping-cart-26/1000/Shopping-Basket-03-512.png" Width="43px" PostBackUrl="~/shopCart.aspx"/>
        </nav>
        <section>
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatColumns="3" RepeatDirection="Horizontal" Width="453px">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <ItemTemplate>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label1" runat="server" Text="Product ID: "></asp:Label>
                                <asp:Label ID="IDLbl" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="ProductLbl" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label2" runat="server" Text="Price: "></asp:Label>
                                <asp:Label ID="PriceLbl" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Image ID="ProductImg" runat="server" ImageUrl='<%# Eval("ProductImg") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Image ID="Image2" runat="server" Height="36px" ImageUrl="~/images/AddToCart.png" Width="36px" />
                                Click on the Cart to add it to your order!</td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
        </section>
    </form>
<footer> This Website is owned by its creators </footer>
</body>
</html>
