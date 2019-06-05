<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Add_Articale.aspx.cs" Inherits="bloggingSystem.Admin.Add_Articale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server"> 
    <table>    
 
        <tr> 
            <td>Articale Title</td> 
            <td> 
                <asp:TextBox ID="title" runat="server"></asp:TextBox>
            </td>
        </tr>  
        <tr> 
            <td>Articale Auther</td> 
            <td> 
                <asp:TextBox ID="auther" runat="server"></asp:TextBox>
            </td>
        </tr>  
        <tr> 
            <td>Articale Description</td> 
            <td> 
                <asp:TextBox ID="description" runat="server"></asp:TextBox>
            </td>
           
        </tr>  
         <tr> 
            <td>Articale Content</td> 
            <td> 
                <asp:TextBox ID="content" TextMode="MultiLine" runat="server"></asp:TextBox>
            </td>
           
        </tr> 
        <tr> 
            <td>Articale Cateory</td> 
            <td> 
                 <asp:dropdownlist ID="ddl_category" runat="server" OnSelectedIndexChanged="ddl_category_SelectedIndexChanged"></asp:dropdownlist>
            </td>
        </tr>  
        <tr> 
            <td>Articale Image</td> 
            <td> 
                <asp:FileUpload ID="uploadImg" runat="server"/>
            </td>
        </tr>  
        <tr> 
            <td colspan="2" align="center"> 
                <asp:Button ID="add" runat="server" Text="Add" OnClick="add_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
