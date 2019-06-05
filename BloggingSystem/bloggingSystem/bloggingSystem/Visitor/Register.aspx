<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitor.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="bloggingSystem.Visitor.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server"> 
     <table>
         <tr> 
             <td>First Name</td> 
             <td> <asp:TextBox ID="fName" runat="server"></asp:TextBox> </td>
         </tr> 

         <tr> 
             <td>Last Name</td> 
             <td> <asp:TextBox ID="lName" runat="server"></asp:TextBox> </td>
         </tr> 
         
         <tr> 
             <td>Email</td> 
             <td> <asp:TextBox ID="email" runat="server"></asp:TextBox> </td>
         </tr> 
         <tr> 
             <td>Password</td> 
             <td> <asp:TextBox ID="password" runat="server"  TextMode="Password"></asp:TextBox> </td>
         </tr> 
         <tr> 
             <td>Address</td> 
             <td> <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox> </td>
         </tr>
   
         <tr> 
             <td>Mobile</td> 
             <td> <asp:TextBox ID="mobile" runat="server"></asp:TextBox> </td>
         </tr> 
         <tr> 
              
             <td colspan="2" align="center"> <asp:Button ID="reg" runat="server" Text="Register" OnClick="reg_Click" ></asp:Button> </td>
         </tr> 
         <tr> 
             
             <td
                 colspan="2" align="center"> <asp:Label ID="l1" runat="server"></asp:Label> </td>
         </tr>
    </table>
</asp:Content>
