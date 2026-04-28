<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Meni.aspx.cs" Inherits="Restaurant.Meni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row text-center">

            <div class="m-4">
                <asp:Image ID="Image1" runat="server" />
            </div>

            <div class="m-4">
                <asp:DropDownList ID="ddlJadenja" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlJadenja_SelectedIndexChanged"></asp:DropDownList>
            </div>

            <div class="m-4">
                <asp:Label ID="lblCena" runat="server" Text="Label"></asp:Label>
            </div>

            <div class="m-4">
                <asp:Button ID="btnPotvrdi" runat="server" Text="Потврди" OnClick="btnPotvrdi_Click" />
            </div>

            <br />
            <br />

            <div class="m-4">
                <asp:Label ID="Label1" runat="server" Text="Име на јадење"></asp:Label>
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Цена"></asp:Label>
                <asp:TextBox ID="txtCena" runat="server"></asp:TextBox>
            </div>

            <div class="m-4">
                <asp:Button ID="btnDodadi" runat="server" Text="Додади" OnClick="btnDodadi_Click" />
            </div>

        </div>
    </div>

</asp:Content>
