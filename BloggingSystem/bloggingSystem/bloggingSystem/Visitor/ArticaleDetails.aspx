<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitor.Master" AutoEventWireup="true" CodeBehind="ArticaleDetails.aspx.cs" Inherits="bloggingSystem.Visitor.ArticaleDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
     <asp:Repeater ID="r1" runat="server" >  
        <HeaderTemplate>   
        </HeaderTemplate>
         
          <ItemTemplate>
        
             <div style="height:200px;width:800px;border-style:solid; border-width:1px;"> 
                <div style="height:200px;width:200px;float:left;border-style:solid; border-width:1px;"> 
                    <img src="../<%#Eval("Image") %>" alt="img" style="height:200px;width:200px" />
                </div> 
                <div style="height:200px;width:596px;float:left;border-style:solid; border-width:1px;"> 
                    Aricale <%#Eval("Content") %> <br /> 
                    
                </div> 
              </div>
        </ItemTemplate>
        <FooterTemplate>  
        </FooterTemplate>
    </asp:Repeater>
    <br />  
    <table> 
        <tr> 
            <td><asp:Label ID="l1" runat="server">Comment</asp:Label></td> 
            <td><asp:TextBox ID="comment" runat="server" TextMode="MultiLine" ></asp:TextBox></td>
            <td><asp:Button ID="add_comment" runat="server" Text="Save Comment" OnClick="add_comment_Click" />  </td>
             <td><asp:Button ID="show_comments" runat="server" Text="Show Comments" OnClick="show_comments_Click" />  </td>
        </tr> 
        <tr>  
            <td><asp:Label ID="l2" runat="server" Text=""></asp:Label></td> 
        </tr>
    </table> 
     <asp:Repeater ID="r2" runat="server" >  
        <HeaderTemplate>  
            <ul>
        </HeaderTemplate>
         
          <ItemTemplate>
             <li>
             <div style="height:50px;width:800px;border-style:solid; border-width:1px;"> 
                <div style="height:50px;width:200px;float:left;border-style:solid; border-width:1px;"> 
                    By:<%#Eval("WriterId") %> (this is comment writerId )
                </div> 
                <div style="height:50px;width:596px;float:left;border-style:solid; border-width:1px;"> 
                    <p style="width:596px;"><%#Eval("Content") %> </p> 
                    
                </div> 
              </div> 

             </li>
        </ItemTemplate>
        <FooterTemplate> 
            </ul> 
        </FooterTemplate>
    </asp:Repeater>
   <strong ><asp:Label ID="lbl_noComments" runat="server" Text=""></asp:Label></strong>
</asp:Content>
