<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form runat="server">
         <br />
         <br />
         <br />
         <br />

         <h2><asp:label runat="server" ID="welcome" Text="" text-align="center"></asp:label></h2>
       <div class="container">
	      <div class="row">
		    <h2>Search Recipe</h2>
                <div id="custom-search-input">
                            <div class="input-group col-md-12">
                              <asp:TextBox Id="search" runat="server" style="left: -15px; width: 778px;" class="search-query form-control" placeholder="Search" />
               
                                    <asp:Button  style="height:34px; margin-top: 4px;" Id="searchbutton" runat="server" OnClick="searchbutton_Click" Text="Search">
                                       
                                    </asp:Button>
                               
                            </div>
                        </div>             
                
	      </div>
        </div>
         &nbsp;
         <br />
         <br />
       <div class="row">
        <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">About Food</div>
              <div class="panel-body">
                <asp:ImageButton ID="aboutfood" src="Images/aboutfood.jpg" width="100%" runat="server" PostBackUrl="~/Aboutfood.aspx"/>
              </div>
            </div>
        </div>

        <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Food Blog</div>
              <div class="panel-body">
                 <asp:ImageButton ID="blog" src="Images/foodblog1.jpg" width="100%" runat="server" />
              </div>
            </div>
        </div>

        <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Beginner's Cookbook</div>
              <div class="panel-body">
                 <asp:ImageButton ID="cookbook" src="Images/cookbook.jpg" width="100%" runat="server" PostBackUrl="~/Cookbook.aspx" />
              </div>
            </div>
        </div>
       </div>

      <div class="row">
         <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Cooking Tips</div>
              <div class="panel-body">
                <asp:ImageButton ID="tips" src="Images/cookingtips.jpg" width="100%" height="220px" runat="server" PostBackUrl="~/Cookingtips.aspx" />
                
              </div>
            </div>
        </div>

        <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Post Recipes</div>
              <div class="panel-body">
                 <asp:ImageButton ID="post" src="Images/postrecipe1.jpg" width="100%" runat="server"  OnClick="post_Click" />
              </div>
            </div>
        </div>

        <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Trending</div>
              <div class="panel-body">
                 <asp:ImageButton ID="ImageButton3" src="Images/trending.jpg" width="100%" runat="server" PostBackUrl="~/Trending.aspx"/>
              </div>
            </div>
        </div>
     </div>

    </form>
</asp:Content>

