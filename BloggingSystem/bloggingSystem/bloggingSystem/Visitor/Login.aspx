<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitor.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bloggingSystem.Visitor.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server"> 
     <table>
        <tr> 
            <td>email</td> 
            <td><asp:textbox ID="email" runat="server" ></asp:textbox> </td>
        </tr>  

         <tr> 
            <td>password</td> 
             <td><asp:textbox ID="password" runat="server" TextMode="Password"></asp:textbox></td>
             
        </tr>  
        <tr> 
            <td colspan="2" align="center"> 
                <asp:button ID="login" runat="server" text="Login" OnClick="login_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"> 
                <asp:label runat="server" text="" ID="l1"></asp:label>
            </td>
        </tr>
    </table>
</asp:Content>
