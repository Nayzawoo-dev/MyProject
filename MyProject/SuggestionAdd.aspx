<%@ Page Title="အကြံပြုစာရေးပါ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuggestionAdd.aspx.cs" Inherits="MyProject.SuggestionAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="max-width:500px; margin:auto; padding:20px;">
        <h2>💡 အကြံပြုစာရေးပါ</h2>
        <hr />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label><br />
        <asp:Label runat="server" Text="အမည်:" /><br />
        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="100%" placeholder="သင့်နာမည်ထည့်ပါ"></asp:TextBox><br />

        <asp:Label runat="server" Text="အကြံပြုစာ:" /><br />
        <asp:TextBox ID="txtSuggestion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" Width="100%" placeholder="အကြံပြုစာရေးပါ..."></asp:TextBox><br />

        <asp:Button ID="btnSubmit" runat="server" Text="တင်မယ်" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
        <br /><br />
        
    </div>

</asp:Content>
