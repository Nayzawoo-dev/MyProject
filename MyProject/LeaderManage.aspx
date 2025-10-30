<%@ Page Title="Leader များစီမံရန်" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaderManage.aspx.cs" Inherits="MyProject.LeaderManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="max-width: 700px; margin: auto; padding: 20px;">
        <h2>Leader စာရင်းစီမံခြင်း</h2>
        <hr />

        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>

        <div style="margin-bottom: 15px;">
            <asp:HiddenField ID="hfId" runat="server" />
            <asp:Label runat="server" Text="အမည်:" /><br />
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" Width="100%" placeholder="Leader အမည်"></asp:TextBox><br />

            <asp:Label runat="server" Text="ဖုန်းနံပါတ်:" /><br />
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" Width="100%" placeholder="09xxxxxxx"></asp:TextBox><br />

            <asp:Button ID="btnSave" runat="server" Text="ထည့်မယ်" CssClass="btn btn-primary" OnClick="btnSave_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="ဖျက်မယ်" CssClass="btn btn-secondary" OnClick="btnCancel_Click" Visible="false" />
            <br />
            <br />
        </div>

        <asp:GridView ID="gvLeaders" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" OnRowCommand="gvLeaders_RowCommand" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="အမည်" />
                <asp:BoundField DataField="Phone_No" HeaderText="ဖုန်းနံပါတ်" />
                <asp:TemplateField HeaderText="အက်ရှင်">
                    <ItemTemplate>
                        <asp:Button runat="server" CommandName="EditLeader" CommandArgument='<%# Eval("Id") %>' Text="ပြင်" CssClass="btn btn-sm btn-warning" />
                        <asp:Button runat="server" CommandName="DeleteLeader" CommandArgument='<%# Eval("Id") %>' Text="ဖျက်" CssClass="btn btn-sm btn-danger" OnClientClick="return confirm('သင်ဖျက်ချင်တာသေချာပါသလား?');" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
