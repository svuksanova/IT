<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="PagesNavigation.Page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <main>
        <section class="row" aria-labelledby="secondPageTitle">
            <h1 id="secondPageTitle">Page 2</h1>
            <p class="lead">This is page 2!</p>
        </section>

        <asp:Button ID="prevBtn" runat="server" Text="Prethodno" OnClick="prevBtn_Click" />
        <asp:Button ID="nextBtn" runat="server" Text="Sledno" OnClick="nextBtn_Click" />
    </main>
     
</asp:Content>
