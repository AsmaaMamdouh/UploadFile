<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitor.Master" AutoEventWireup="true" CodeBehind="DislayArticales.aspx.cs" Inherits="bloggingSystem.Visitor.DislayArticales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server"> 
    <asp:Repeater ID="r1" runat="server" >  
        <HeaderTemplate> 
           <ul>   
        </HeaderTemplate>
         
          <ItemTemplate>
          <li class="product">   
              <div style="height:200px;width:600px;border-style:solid; border-width:1px;"> 
                <div style="height:200px;width:200px;float:left;border-style:solid; border-width:1px;"> 
                    <a href="ArticaleDetails.aspx?id=<%#Eval("Id")%>"> <img src="../<%#Eval("Image") %>" alt="img" style="height:200px;width:200px" /></a>
                </div> 
                <div style="height:200px;width:390px;float:left;border-style:solid; border-width:1px;padding-left:5px;"> 
                  <strong class="price"><%#Eval("Title") %></strong>  
                   <p> <%#Eval("Description") %><br /></p>
                   <h4 >by: <%#Eval("Auther") %></h4>
                    <a href="ArticaleDetails.aspx?id=<%#Eval("Id")%>"><span style="color:forestgreen;align-content:center">Read Articale</span></a> 
                </div>   
              </div>
          </li>  
        </ItemTemplate>
        <FooterTemplate> 
       </ul> 
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>
