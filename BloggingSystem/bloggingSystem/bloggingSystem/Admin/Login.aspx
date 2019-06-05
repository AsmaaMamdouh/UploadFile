<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bloggingSystem.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title> 
    <link href="logincss/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <label>UserName</label>
        <asp:TextBox ID="userName" runat="server"></asp:TextBox> 
         
        <label>Password</label>
        <asp:TextBox ID="password" runat="server"></asp:TextBox> 

        <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click"/> 
         
       <asp:Label ID="l1" runat="server"></asp:Label> 
    <br />
    </form>
</body>
</html>
