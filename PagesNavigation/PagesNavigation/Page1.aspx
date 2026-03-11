<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="PagesNavigation.Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="firstPageTitle">
            <h1 id="firstPageTitle">Page 1</h1>
            <p class="lead">This is page 1!</p>
        </section>

        <asp:Button ID="prevBtn" runat="server" Text="Prethodno" OnClick="prevBtn_Click" />
        <asp:Button ID="nextBtn" runat="server" Text="Sledno" OnClick="nextBtn_Click" />
    </main>


</asp:Content>
