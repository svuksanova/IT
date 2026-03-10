<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Converter.aspx.cs" Inherits="Destiantions.Converter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">

    <div class="row text-center">
        <div class="m-4">
            Vnesete ime na valuta:
            <br />
            <asp:TextBox ID="ImeValuta" runat="server"></asp:TextBox>
        </div>

        <div class="m-4">
            Vnesete vrednost na valuta:
            <br />
            <asp:TextBox ID="VrednostValuta" runat="server"></asp:TextBox>
        </div>

        <div class="m-4">
            Vrednost:
            <br />
            <asp:TextBox ID="Vrednost" runat="server"></asp:TextBox>
        </div>

        <div class="m-4">
            <asp:Button ID="DodadiValuta" runat="server" Text="DodadiValuta" OnClick="DodadiValuta_Click"  />
            <asp:Button ID="BrishiValuta" runat="server" Text="BrishiValuta" OnClick="BrishiValuta_Click" />
        </div>

        <div class="m-4">
            <asp:RadioButtonList ID="ListaValuti" runat="server" EnableViewState="True" AutoPostBack="True" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged"></asp:RadioButtonList>

        </div>

        <div class="m-4">
            Vkupno valuti: <asp:Label ID="total" runat="server" Text="0"></asp:Label>

        </div>

        <div class="m-4">
            Status: <asp:Label ID="status" runat="server" Text="0"></asp:Label>

        </div>
    </div>

</div>

</asp:Content>

