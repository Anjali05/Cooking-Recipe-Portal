<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cookingtips.aspx.cs" Inherits="Cookingtips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        body
        {
            background-image: url('../Images/Background/background6.jpg');
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <br />
        <br />
        <br />
        <div class="panel panel-success">
         <div class="panel-heading">Cooking Tip</div>
          <div class="thumbnail">
            <asp:MultiView ID="tips" runat="server">
                <asp:View ID="tip1" runat="server">
                    <asp:Image ID="img1" src="Images/Tips/tip1.jpg" runat="server" class="img-thumbnail" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B1" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="NextView" />
                </asp:View>
                <asp:View ID="tip2" runat="server">
                    <asp:Image ID="img2" src="Images/Tips/tip2.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B2" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByid" CommandArgument="tip3"/>
                </asp:View>
                <asp:View ID="tip3" runat="server">
                     <asp:Image ID="Img3" src="Images/Tips/tip3.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B3" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByIndex" CommandArgument="tip4"/>
                </asp:View>
                <asp:View ID="tip4" runat="server">
                     <asp:Image ID="Img4" src="Images/Tips/tip4.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B4" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByid" CommandArgument="tip5"/>
                </asp:View>
                <asp:View ID="tip5" runat="server">
                     <asp:Image ID="Img5" src="Images/Tips/tip6.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B5" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByid" CommandArgument="tip6"/>
                </asp:View>
                <asp:View ID="tip6" runat="server">
                     <asp:Image ID="Img6" src="Images/Tips/tip7.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B6" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByid" CommandArgument="tip7"/>
                </asp:View>
                <asp:View ID="tip7" runat="server">
                     <asp:Image ID="Img7" src="Images/Tips/tip8.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B7" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByid" CommandArgument="tip8" />
                </asp:View>
                <asp:View ID="tip8" runat="server">
                     <asp:Image ID="Img8" src="Images/Tips/tip9.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B8" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByid" CommandArgument="tip9"/>
                </asp:View>
                <asp:View ID="tip9" runat="server">
                     <asp:Image ID="Img9" src="Images/Tips/tip10.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
                    <asp:Button ID ="B9" align="centre" Text="Next Tip" class="btn btn-primary" runat="server" CommandName="SwitchViewByid" CommandArgument="tip10" />
                </asp:View>
                <asp:View ID="tip10" runat="server">
                     <asp:Image ID="Img10" src="Images/Tips/tip11.jpg" runat="server" Width="50%" Height="50%"></asp:Image>
              
                </asp:View>
            </asp:MultiView>
          </div>
       </div>
      
    </form>
</asp:Content>

