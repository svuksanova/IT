<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="LabVAgain.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
    <div class="row text-center">
        <div class="m-4" >
            <asp:Label ID="NameLabel" runat="server" Text="Име"></asp:Label>
            <asp:TextBox ID="NameBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NameFieldValidator" runat="server" ErrorMessage="Внесете име" ControlToValidate="NameBox"></asp:RequiredFieldValidator>
            <br />
        </div>
    
        <div class="m-4" >
            <asp:Label ID="PasswordLabel" runat="server" Text="Лозинка"></asp:Label>
            <asp:TextBox ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordFieldValidator1" runat="server" ErrorMessage="Внесете лозинка" ForeColor="Red" ControlToValidate="PasswordBox"></asp:RequiredFieldValidator>
            <br />
        </div>

        <div class="m-4" >
            <asp:Label ID="EmailLabel" runat="server" Text="е-адреса"></asp:Label>
            <asp:TextBox ID="EmailBox" runat="server" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалиден формат" ControlToValidate="EmailBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ErrorMessage="Внесете е-адреса" ControlToValidate="EmailBox"></asp:RequiredFieldValidator>
        </div>

        <asp:Button ID="LoginBtn" runat="server" Text="Најавете се" OnClick="LoginBtn_Click" />
    </div>

</div>

</asp:Content>
