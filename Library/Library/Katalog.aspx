<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="Library.Katalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="container">
     <div class="row">

         <div class="m-4">
             <asp:Image ID="LibraryLogo" runat="server" />
         </div>

         <div class="m-4">
             <asp:Label ID="GenreLabel" runat="server" Text="Жанр: "></asp:Label>
             <asp:DropDownList ID="GenreDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="GenreDropDownList_SelectedIndexChanged"></asp:DropDownList>

         </div>

         <div class="m-4">
             <asp:ListBox ID="BooksList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="BooksList_SelectedIndexChanged"></asp:ListBox>
         </div>

         <div class="m-4">
             <asp:Label ID="AuthorLabel" runat="server"></asp:Label>
             
         </div>

         <div class="m-4">
             <asp:Button ID="ReservationBtn" runat="server" Text="Резервирај" OnClick="ReservationBtn_Click"  />
         </div>



     </div>

 </div>
</asp:Content>
