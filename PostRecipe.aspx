<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PostRecipe.aspx.cs" Inherits="PostRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <div class = "page-header">
   
               <h1>
                  Post Your Recipe Here
               </h1>
   
       </div>
    
       <form class = "form-horizontal" runat="server">
   
               <div class = "form-group">
                  <asp:label Id = "L1" class = "col-sm-2 control-label" runat="server">Recipe Name</asp:label>
		
                  <div class = "col-sm-10">
                     <asp:TextBox ID="name"  runat="server" class = "form-control"  placeholder = "Enter Recipe Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RF1" ControlToValidate="name" runat="server" ErrorMessage="Please enter recipe name." />
                  </div>
               </div>
   
               <div class = "form-group">
                  <asp:label Id="type"  runat="server" class = "col-sm-2 control-label">Type</asp:label>
		
                  <div class = "col-sm-10">
                     <asp:Dropdownlist Id="list" runat="server">
                         <asp:ListItem>Breakfast</asp:ListItem>
                         <asp:ListItem>Dinner Party</asp:ListItem>
                         <asp:ListItem>Drinks</asp:ListItem>
                         <asp:ListItem>Desserts</asp:ListItem>
                         <asp:ListItem>Seafood</asp:ListItem>
                         <asp:ListItem>Snacks</asp:ListItem>
                     </asp:Dropdownlist>
                  </div>
               </div>
   
               <div class = "form-group">
                  <asp:label Id = "Label1" class = "col-sm-2 control-label" runat="server">Ingredients</asp:label>
		
                  <div class = "col-sm-10">
                     <asp:TextBox ID="ingredients"  runat="server" class = "form-control"  placeholder = "Ingredients" TextMode="MultiLine"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RF2" runat="server" ControlToValidate="ingredients" ErrorMessage="Please fill out ingredients." />
                  </div>
               </div>
   
               <div class = "form-group">
                  <asp:label Id = "Label2" class = "col-sm-2 control-label" runat="server">Method</asp:label>
		
                  <div class = "col-sm-10">
                     <asp:TextBox ID="method"  runat="server" class = "form-control"  placeholder = "Method of preparation" TextMode="MultiLine"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RF3" ControlToValidate="method" ErrorMessage="Please enter method of prepearation" runat="server" />
                  </div>
               </div>
              
            
               <div class = "form-group">
                  <asp:label Id = "im" class = "col-sm-2 control-label" runat="server">Image Url</asp:label>
		
                  <div class = "col-sm-10">
                     <asp:TextBox ID="image"  runat="server" class = "form-control"  placeholder = "Image URL"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RF4" ControlToValidate="image" ErrorMessage="Please enter image url." runat="server" />
                  </div>
               </div>
   
               
               <div class = "form-group">
                  <div class = "col-sm-offset-2 col-sm-10">
                     <asp:button id= "post" class = "btn btn-default" runat="server" Text="Post" OnClick="post_Click"></asp:button>
                  </div>
               </div>
	
       </form>
    
</asp:Content>

