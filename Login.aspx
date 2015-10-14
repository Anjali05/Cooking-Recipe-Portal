<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><link href="Content/login.css" rel="stylesheet" />
    <br />
    <br />
    <div class = "container">
	<div class="wrapper">
		<form runat="server" class="form-signin">       
		    <h3 class="form-signin-heading">Welcome Back! Please Login</h3>
			  <hr class="colorgraph"/><br/>
			  
			  <asp:TextBox ID="user" runat="server" class="form-control" name="Username" placeholder="Username" required="" autofocus="" />
			  <asp:TextBox ID="passs" runat="server" TextMode="Password" class="form-control" name="Password" placeholder="Password" required=""/>     		  
			 
			  <asp:button ID="login" class="btn btn-lg btn-primary btn-block" Text="Login" runat="server"></asp:button>  			
		</form>			
	</div>
</div>
</asp:Content>

