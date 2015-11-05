<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Drinks.aspx.cs" Inherits="Drinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
    rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <script type="text/javascript">
   
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <br />
    <br />
    <br />
    <br />
    <br />
    <form runat="server">
        <asp:GridView ID="B1" AutoGenerateSelectButton="True" Width="940px" HorizontalAlign="Center" CssClass="footable" runat="server" AutoGenerateColumns="false" Style="max-width: 500px" OnSelectedIndexChanged="B1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" />
            </Columns>
        </asp:GridView>

       
               
                 <div class = "panel-body">
                     <asp:Panel ID="Panel1" runat="server" Visible="false">
                
                     </asp:Panel>
               </div>
     
    </form>
</asp:Content>

