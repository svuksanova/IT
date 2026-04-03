<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="Library.Registracija" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">

            <div class="m-4">
                <asp:Label ID="FullNameLabel" runat="server" Text="Име и презиме"></asp:Label>
                <asp:TextBox ID="FullNameTextBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="FullNameRequired" runat="server" ErrorMessage="Внесете име и презиме" ControlToValidate="FullNameTextBox" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <div class="m-4">
                <asp:Label ID="PasswordLabel" runat="server" Text="Лозинка"></asp:Label>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>

            </div>

            <div class="m-4">
                <asp:Label ID="ConfirmPasswordLabel" runat="server" Text="Потврди Лозинка"></asp:Label>
                <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="ConfirmPasswordTextBox" ControlToCompare="PasswordTextBox" ForeColor="Red"></asp:CompareValidator>
            </div>

            <div class="m-4">
                <asp:Label ID="MembershipLabel" runat="server" Text="Членска карта"></asp:Label>
                <asp:TextBox ID="MembershipTextBox" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="MembershipTextBox" ValidationExpression="^BIB-[0-9]{4}$" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

            <div class="m-4">
                <asp:Button ID="SignUpBtn" runat="server" Text="Регистрирај се" OnClick="SignUpBtn_Click" />
            </div>



        </div>

    </div>

</asp:Content>
