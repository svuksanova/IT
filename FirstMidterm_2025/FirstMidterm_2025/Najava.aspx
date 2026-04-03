<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="FirstMidterm_2025.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="m-4">
                <asp:Label ID="NameLabel" runat="server" Text="Име"></asp:Label>
                <br />
                <asp:TextBox ID="NameBox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="NameFieldValidator" runat="server" ErrorMessage="Името е задолжително." ControlToValidate="NameBox" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Letters Only!" ControlToValidate="NameBox" ValidationExpression="^[a-zA-Z]+$" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>

            <br />

            <div class="m-4">
                <asp:Label ID="PassLabel" runat="server" Text="Лозинка"></asp:Label>
                <br />
                <asp:TextBox ID="PassBox" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="PasswordFieldValidator" runat="server" ErrorMessage="Лозинката е задолжителна." ControlToValidate="PassBox" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <br />

            <div class="m-4">
                <asp:Label ID="EmailLabel" runat="server" Text="Email"></asp:Label>
                <br />
                <asp:TextBox ID="EmailBox" runat="server" TextMode="Email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="EmailFieldValidator" runat="server" ErrorMessage="Email-от е задолжителен." ForeColor="Red" ControlToValidate="EmailBox"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалиден формат." ControlToValidate="EmailBox" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <br />

            <div class="m-4">
                <asp:Label ID="Login" runat="server" Text="Најави се на факултетот по:"></asp:Label>
                <br />

                <div class="gap-2">
                    <asp:Button CssClass="btn btn-primary" ID="MathematicsLoginBtn" runat="server" Text="Математика" OnClick="MathematicsLoginBtn_Click" />
                    <asp:Button CSSClass="btn btn-primary" ID="PhysicsLoginBtn" runat="server" Text="Физика" OnClick="PhysicsLoginBtn_Click" />
                    <asp:Button CssClass="btn btn-primary" ID="InformaticsLoginBtn" runat="server" Text="Информатика" OnClick="InformaticsLoginBtn_Click" />
                </div>
            </div>


        </div>
    </div>


</asp:Content>
