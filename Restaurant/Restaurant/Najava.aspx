<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Restaurant.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row text-center">

            <div class="m-4">
                <asp:Label ID="Label1" runat="server" Text="Корисничко име "></asp:Label>
                <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внесете корисничко име" ControlToValidate="txtKorisnik" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="m-4">
                <asp:Label ID="Label2" runat="server" Text="Лозинка "></asp:Label>
                <asp:TextBox ID="txtLozinka" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="m-4">
                <asp:Label ID="Label3" runat="server" Text="Потврди Лозинка "></asp:Label>
                <asp:TextBox ID="txtPotvrdaLozinka" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Лозинките не се совпаѓаат" ControlToCompare="txtLozinka" ControlToValidate="txtPotvrdaLozinka" ForeColor="Red"></asp:CompareValidator>
            </div>

            <div class="m-4">
                <asp:Label ID="Label4" runat="server" Text="Работен код "></asp:Label>
                <asp:TextBox ID="txtKod" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалиден формат на код" ControlToValidate="txtKod" ForeColor="Red" ValidationExpression="^RES-[A-Z]{2}-[0-9]{3}$"></asp:RegularExpressionValidator>
            </div>

            <div class="m-4">
                <asp:Button ID="btnNajava" runat="server" Text="Најави се" OnClick="btnNajava_Click" />
            </div>

        </div>
    </div>
</asp:Content>
