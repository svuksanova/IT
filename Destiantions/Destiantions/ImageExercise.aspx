<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ImageExercise.aspx.cs" Inherits="Destiantions.ImageExercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

   <!-- <div class="row m-4">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/sample.jpg" />
        </div> 
        -->
        <div class="row m-4">
            <asp:ImageButton ID="sampleImage" runat="server" ImageUrl="~/sample.jpg" OnClick="sampleImage_Click" />
        </div>

        <div class="row m-4">
            <asp:Label ID="Label1" runat="server" Text="Click on the image..."></asp:Label>
        </div>

    </div>

</asp:Content>
