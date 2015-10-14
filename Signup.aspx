<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <form class="form-horizontal" align="center" runat="server">
        <div id="header">
            <asp:Label ID="L1" runat="server" Text="Fill the required fields to sign up."></asp:Label>
        </div>
        <div class="control-group">
            <!-- username-->
            <div>
                 <asp:label ID="L2" class="control-label"  Text="Name*" runat="server"></asp:label>
                 <div class="controls">
                     <asp:TextBox ID="name" Font-Names="input-xlarge" runat="server" />
                     <br />
                     <asp:RequiredFieldValidator ID="NameValidator" runat="server" ErrorMessage="Please enter your name." ControlToValidate="name"></asp:RequiredFieldValidator>
                
                 </div>
            </div>
        </div>
        <div class="control-group">
            <!-- Email-->
            <div>
                 <asp:label ID="L3" class="control-label"  Text="Email ID*" runat="server"></asp:label>
                 <div class="controls">
                     <asp:TextBox ID="email" Font-Names="input-xlarge" runat="server" />
                
                     <br />
                     <asp:RequiredFieldValidator ID="EmailValidator1" runat="server" ErrorMessage="Please enter your Email ID." ControlToValidate="email"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please provide a valid emailID." ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
                 </div>
            </div>
        </div>
         <div class="control-group">
            <!-- Password-->
            <div>
                 <asp:label ID="L4" class="control-label"  Text="Password*" runat="server"></asp:label>
                 <div class="controls">
                     <asp:TextBox ID="pass" Font-Names="input-xlarge" runat="server" />
                
                     <br />
                     <asp:RequiredFieldValidator ID="PasswordValidator" runat="server" ErrorMessage="Please enter a paaword." ControlToValidate="pass"></asp:RequiredFieldValidator>
                
                 </div>
            </div>
        </div>
         <div class="control-group">
            <!--Confirm Password-->
            <div>
                 <asp:label ID="L5" class="control-label"  Text="Confirm Password*" runat="server"></asp:label>
                 <div class="controls">
                     <asp:TextBox ID="confirmpass" Font-Names="input-xlarge" runat="server" />
                
                     <br />
                     <asp:RequiredFieldValidator ID="ConfirmPassValidator" runat="server" ErrorMessage="Please confirm your password." ControlToValidate="confirmpass"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match." ControlToCompare="pass" ControlToValidate="confirmpass"></asp:CompareValidator>
                
                 </div>
            </div>
        </div>
         <div class="control-group">
            <!--Newsletter-->
            <div>
                 <asp:label ID="Label1" class="control-label"  Text="Subscribe for newsletter?" runat="server"></asp:label>
                  <asp:CheckBox ID="CB1" runat="server" />
            </div>
        </div>
        <div class="controls">
            <asp:Button ID="submit" runat="server" class="btn btn-primary" Text="Submit"/>
            <asp:Button ID="cance" runat="server" class="btn btn-primary" Text="Cancel" />
        </div>
    </form>
</asp:Content>

