<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><link href="Content/login.css" rel="stylesheet" />
    <br />
    <br />

    <div class = "page-header">
   
               <h1>
                 Login
               </h1>
   
       </div>
    
		 <form class="form-horizontal" align="center" runat="server">     
             
             <div id="header">
                 <h4>Fill the details to login.</h4>
            </div>
              
		      <div class="form-group">
                   <asp:label ID="L2" class = "col-sm-2 control-label" Text="Username*" runat="server"></asp:label>
                   <div class = "col-sm-10"> 
                    <asp:TextBox ID="user" runat="server" class="form-control" name="Username" placeholder="Username" required="" autofocus="" />
                       <asp:RequiredFieldValidator Id="RF1" runat="server" ErrorMessage="This is a required filed." ControlToValidate="user" />
		           </div>
             </div>
			  
              <div class="form-group">
                    <asp:label ID="L4" class="col-sm-2 control-label"   Text="Password*" runat="server"></asp:label>
                   <div class = "col-sm-10"> 
                     <asp:TextBox ID="pass" runat="server" TextMode="Password" class="form-control" name="Password" placeholder="Password" required=""/>    
                       <asp:RequiredFieldValidator ID="RF2" runat="server" ErrorMessage="This is a required field." ControlToValidate="pass" /> 		  
		           </div>
             </div>
			 
			 
			 <div class="controls">
			   <asp:button ID="login" class="btn btn-primary" Text="Login" runat="server" OnClick="login_Click"></asp:button>  			
             </div>
		</form>			

</asp:Content>

