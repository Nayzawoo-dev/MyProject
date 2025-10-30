<%@ Page Title="Leader စာရင်း" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaderList.aspx.cs" Inherits="MyProject.LeaderList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="max-width:700px; margin:auto; padding:20px;">
        <h2>တာဝန်ရှိသူများ</h2>
        <hr />

        <asp:Repeater ID="rptLeaders" runat="server">
            <ItemTemplate>
                <div style="border:1px solid #ccc; border-radius:10px; padding:10px; margin-bottom:10px;">
                    <h4>👤 <%# Eval("Name") %></h4>
                    <p>📞 <%# Eval("Phone_No") %></p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>
