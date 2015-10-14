<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form runat="server">
         <br />
         <br />
         <br />
         <br />
       <div class="container">
	      <div class="row">
		    <h2>Search Recipe</h2>
                <div id="custom-search-input">
                          <div class="input-group col-md-12">
                               <asp:TextBox runat="server" type="text" class="  search-query form-control" placeholder="Search" />
                               <span class="input-group-btn">
                               <button class="btn btn-danger" type="button">
                                <span class=" glyphicon glyphicon-search"></span>
                                </button>
                               </span>
                          </div>                  
                </div>
	      </div>
        </div>
         <br />
         <br />
        <div>
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
                 <asp:ImageButton ID="cookbook" src="Images/cookbook.jpg" width="100%" runat="server" />
              </div>
            </div>
        </div>
        </div>


         <div>
         <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Cooking Tips</div>
              <div class="panel-body">
                <asp:ImageButton ID="tips" src="Images/cookingtips.jpg" width="100%" runat="server" PostBackUrl="~/Cookingtips.aspx" />
                
              </div>
            </div>
        </div>

        <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Post Recipes</div>
              <div class="panel-body">
                 <asp:ImageButton ID="post" src="Images/postrecipe1.jpg" width="100%" runat="server" />
              </div>
            </div>
        </div>

        <div class="col-md-4 col-lg-4">
            <div class="panel panel-info">
              <div class="panel-heading">Trending</div>
              <div class="panel-body">
                 <asp:ImageButton ID="ImageButton3" src="Images/trending.jpg" width="100%" runat="server" />
              </div>
            </div>
        </div>
      </div>
    </form>
</asp:Content>

