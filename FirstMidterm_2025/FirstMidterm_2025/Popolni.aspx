<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Popolni.aspx.cs" Inherits="FirstMidterm_2025.Popolni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">

            <div class="m-4">
                <asp:Image ID="Image1" runat="server" />
                <br />
                <br />
                <asp:Label ID="FacultyName" runat="server"></asp:Label>
                <br />

                <div class="gap-2">
                    <asp:ListBox ID="SubjectsList" runat="server"></asp:ListBox>
                    <asp:ListBox ID="GradesList" runat="server"></asp:ListBox>
                </div>

                <br />
                <br />

                <asp:TextBox ID="EnterGradeBox" runat="server" placeholder="Оценка"  Width="228px"></asp:TextBox>

                <br />
                <br />


                <asp:Button ID="AddGradeBtn" runat="server" Text="Додади" Width="228px" OnClick="AddGradeBtn_Click" />
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="you must enter number [5-10]" ControlToValidate="EnterGradeBox" ForeColor="Red" ValidationExpression="^[5-9]{1}$"></asp:RegularExpressionValidator>

                <br />
                <br />
                <asp:Button ID="CalculateProsekBtn" runat="server" Text="Пресметај просек" OnClick="CalculateProsekBtn_Click" Width="228px" />
            </div>

        </div>

    </div>
</asp:Content>
