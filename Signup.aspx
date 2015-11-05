 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
     <div class = "page-header">
   
               <h1>
                  Sign up
               </h1>
   
       </div>
    <form class="form-horizontal" align="center" runat="server">
        <div id="header">
            <h4>Sign up to post recipes and receive newsletter.</h4>
        </div>
        <div class="form-group">
            <!-- username-->
            
                 <asp:label ID="L2" class = "col-sm-2 control-label" Text="Username*" runat="server"></asp:label>
                 <div class = "col-sm-10">
                     <asp:TextBox ID="name" class = "form-control"  placeholder = "Enter Your Name" runat="server" />
                     <br />
                     <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="Please enter your name." ControlToValidate="name"></asp:RequiredFieldValidator>
                
                 </div>
            
        </div>
        <div class="form-group">
            <!-- Email-->
            
                 <asp:label ID="L3" class ="col-sm-2 control-label"   Text="Email ID*" runat="server"></asp:label>
                 <div class="col-sm-10">
                     <asp:TextBox ID="email" class = "form-control"  placeholder = "Enter Your Email ID" runat="server" />
                
                     <br />
                     <asp:RequiredFieldValidator ID="EmailValidator1" runat="server" ErrorMessage="Please enter your Email ID." ControlToValidate="email"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please provide a valid emailID." ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
                 </div>
            
        </div>
         <div class="form-group">
            <!-- Password-->
            
                 <asp:label ID="L4" class="col-sm-2 control-label"   Text="Password*" runat="server"></asp:label>
                 <div class="col-sm-10">
                     <asp:TextBox ID="pass"  class = "form-control"  TextMode="Password" placeholder = "Enter Password" runat="server" />
                
                     <br />
                     <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please enter a paaword." ControlToValidate="pass"></asp:RequiredFieldValidator>
                
                 </div>
            
        </div>
         <div class="form-group">
            <!--Confirm Password-->
            <div>
                 <asp:label ID="L5" class="col-sm-2 control-label"  Text="Confirm Password*" runat="server"></asp:label>
                 <div class="col-sm-10">
                     <asp:TextBox ID="confirmpass" TextMode="Password" class = "form-control"  placeholder = "Re-enter Password" runat="server" />
                
                     <br />
                     <asp:RequiredFieldValidator ID="ConfirmPassValidator" runat="server" ErrorMessage="Please confirm your password." ControlToValidate="confirmpass"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match." ControlToCompare="pass" ControlToValidate="confirmpass"></asp:CompareValidator>
                
                 </div>
            </div>
        </div>
         <div class="form-group">
            <!--Newsletter-->
            
                 <asp:label ID="Label1" class="col-sm-2 control-label"  Text="Subscribe for newsletter?" runat="server"></asp:label>
                 <div class="col-sm-10">
                  <asp:CheckBox ID="CB1" runat="server" class="checkbox" />
                 </div>
            
        </div>
        <div class="controls">
            <asp:Button ID="submit" runat="server" class="btn btn-primary" Text="Submit" OnClick="submit_Click"/>
            <asp:Button ID="cance" runat="server" class="btn btn-primary" Text="Cancel" OnClick="cance_Click" PostBackUrl="~/Homepage.aspx"/>
        </div>
    </form>
</asp:Content>

