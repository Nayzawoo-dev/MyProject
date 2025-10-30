<%@ Page Title="အကြံပြုစာများ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuggestionList.aspx.cs" Inherits="MyProject.SuggestionList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="max-width:700px; margin:auto; padding:20px;">
        <h2>📬 အကြံပြုစာများ</h2>
        <hr />

        <asp:Repeater ID="rptSuggestions" runat="server">
            <ItemTemplate>
                <div style="border:1px solid #ccc; border-radius:10px; padding:10px; margin-bottom:10px;">
                    <h4><strong><%# Eval("Name") %></strong></h4>
                    <p style="margin:0; color:#555;"><%# Eval("SuggestionText") %></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <br />
        <a href="SuggestionAdd.aspx" class="btn btn-secondary">+ အသစ်တင်မယ်</a>
    </div>

</asp:Content>
