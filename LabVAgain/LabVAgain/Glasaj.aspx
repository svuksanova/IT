<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="LabVAgain.Glasaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row text-center">

            <div>
                <asp:Image ID="FinkiLogo" runat="server" ImageUrl="~/Лого-ФИНКИ.jpg" />
            </div>

            <div class="m-4">
                <asp:Label ID="ProfessorLabel" runat="server" Text="Prof.Label"></asp:Label>
            </div>

            <div class="m-4">
                <asp:ListBox ID="SubjectsList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SubjectsList_SelectedIndexChanged"></asp:ListBox>
   
                <asp:ListBox ID="CreditsList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CreditsList_SelectedIndexChanged"></asp:ListBox>
            </div>

            <div>
                <asp:Button ID="VoteBtn" runat="server" Text="Гласајте" OnClick="VoteBtn_Click" />
            </div>

            <br />
            <br />
            <br />

            <div class="m-4">
                <asp:Label ID="SubjectAddLabel" runat="server" Text="Предмет"></asp:Label>
            </div>

            <div class="m-4">
                <asp:TextBox ID="SubjectAddBox" runat="server"></asp:TextBox>
            </div>

            <div class="m-4">
                <asp:Label ID="CreditsAddLabel" runat="server" Text="Кредити"></asp:Label>
            </div>

            <div class="m-4">
                <asp:TextBox ID="CreditsAddBox" runat="server"></asp:TextBox>
            </div>

            <br />
            <div class="m-4">
                <asp:Button ID="AddBtn" runat="server" Text="Додади" OnClick="AddBtn_Click" />
            </div>

            <br />

            <div class="m-4">
                <asp:Button ID="DeleteBtn" runat="server" Text="Избриши" OnClick="DeleteBtn_Click" />
            </div>

    
     </div>
   </div>

</asp:Content>
