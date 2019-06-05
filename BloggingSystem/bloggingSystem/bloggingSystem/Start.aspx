<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="bloggingSystem.Start" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div style="height:300px;width:600px;position:center"> 
                <div style="height:300px;width:200px;float:left;"> 
                    <a href="Admin/Login.aspx"> <img src="images/admin1.jpg " alt="img" style="height:200px;width:200px" /></a>
                    <h1>Admin</h1> 
                   <a href="Admin/Login.aspx">  <h5>click to login</h5></a>
                </div>  
                <div  style="height:300px;width:192px;float:left;"></div>
                <div style="height:300px;width:200px;float:left;">  
                    <a href="Visitor/DislayArticales.aspx"><img src="images/admin2.jpg " alt="img" style="height:200px;width:200px" /></a> 
                    <h1>Visitor</h1> 
                   <a href="Visitor/DislayArticales.aspx"> <h5>click to visit site</h5></a>
                </div> 
       </div> 

      
</body>
</html>
