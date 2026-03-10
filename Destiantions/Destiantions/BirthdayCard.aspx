<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BirthdayCard.aspx.cs" Inherits="Destiantions.BirthdayCard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-5">

                <div class="m-4">
                    Изберете боја за позадина:
                    <br />
                    <asp:DropDownList ID="BackgroundColor" runat="server"></asp:DropDownList>
                </div>

                <div class="m-4">
                    Изберете фонт:
                    <br />
                    <asp:DropDownList ID="Font" runat="server"></asp:DropDownList>
                </div>

                <div class="m-4">
                    Изберете боја на фонт:
                    <br />
                    <asp:DropDownList ID="FontColor" runat="server"></asp:DropDownList>
                </div>

                <div class="m-4">
                    Изберете големина на фонт:
                    <br />
                    <asp:TextBox ID="FontSize" runat="server"></asp:TextBox>
                </div>

                <div class="m-4">
                    Тип на рамка:
                    <br />
                    <asp:RadioButtonList ID="BorderType" runat="server"></asp:RadioButtonList>
                </div>

                <div class="m-4">
                    Додади слика:
                    <br />
                    <asp:CheckBox ID="ShowImage" runat="server" />
                </div>

                <div class="m-4">
                    Внесете ја содржината на честитката:
                    <br />
                    <asp:TextBox ID="CardContent" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="m-4">
                    <asp:Button ID="Save" runat="server" Text="Креирај" OnClick="Save_Click" />
                </div>
            </div>

            <div class="col-5">
                <asp:Panel ID="Card" runat="server">
                    <asp:Label ID="Poraka" runat="server" Text="Label"></asp:Label>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/birthdayImg.jpg" Visible="False" />
                </asp:Panel>
            </div>
        </div>
</div>

</asp:Content>
