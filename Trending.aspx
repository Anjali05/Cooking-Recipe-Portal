<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trending.aspx.cs" Inherits="Trending" %>

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
                 <asp:Label ID="today" runat="server" />
               </h1>
   
       </div>
    

     <form id="form1" runat="server">
          <div class="container">
			<h1></h1>
			
			<div id='calendar'>
                <asp:Calendar ID="cal" runat="server" OnSelectionChanged="cal_SelectionChanged" OnDayRender="cal_DayRender"/>
			</div>
          <div >
              <asp:Label ID="l" runat="server" />
          </div>
		</div>
         <br />
       <div class = "panel panel-primary">
           <div class = "panel-body">
                 <asp:Panel ID="Panel1" runat="server">
                
                 </asp:Panel>
           </div>
      </div>
         <asp:TextBox ID="tb" runat="server" Visible="false" TextMode="MultiLine"></asp:TextBox>

    </form>
</asp:Content>

