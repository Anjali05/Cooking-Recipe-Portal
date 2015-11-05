<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server">
       <div class = "panel panel-primary">
            <div class = "panel-heading">
            <h3 class = "panel-title" visible="false"></h3>
       </div>
   
       <div class = "panel-body">
             <asp:Panel ID="Panel1" runat="server">
                
             </asp:Panel>
       </div>
    </div>
         <asp:TextBox ID="tb" runat="server" Visible="false" TextMode="MultiLine"></asp:TextBox>
    </form>
</asp:Content>

