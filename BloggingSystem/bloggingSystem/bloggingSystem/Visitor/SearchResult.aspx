<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/visitor.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="bloggingSystem.Visitor.SearchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server"> 
    <asp:Repeater ID="r1" runat="server" >  
        <HeaderTemplate> 
           <ul> 
        </HeaderTemplate>
           
          <ItemTemplate>
          <li class="product"> 
            <%--<div class="product-info">
              <h3><%#Eval("Title") %></h3>
              <div class="product-desc">
                <h4>Auther <%#Eval("Auther") %></h4>
                <p><%#Eval("Description") %><br /></p>
                <strong class="price"><%#Eval("Title") %></strong> 
              </div>
            </div> --%>         

              <div style="height:200px;width:600px;border-style:solid; border-width:1px;"> 
                <div style="height:200px;width:200px;float:left;border-style:solid; border-width:1px;"> 
                    <a href="ArticaleDetails.aspx?id=<%#Eval("Id")%>"> <img src="../<%#Eval("Image") %>" alt="img" style="height:200px;width:200px" /></a>
                </div> 
                <div style="height:200px;width:396px;float:left;border-style:solid; border-width:1px;"> 
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
