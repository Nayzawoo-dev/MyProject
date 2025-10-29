<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPosts.aspx.cs" Inherits="MyProject.ViewPosts" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>မြို့အလိုက် Posts</title>
    <style>
        .post-box { border: 1px solid #ddd; padding: 10px; margin-bottom: 10px; border-radius: 5px; }
        .post-img { width: 300px; margin: 5px; border-radius: 5px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:600px; margin:auto;">
            <h2><asp:Label ID="lblCityName" runat="server"></asp:Label> မှ Posts</h2>
            <hr />

            <asp:Repeater ID="rptPosts" runat="server">
                <ItemTemplate>
                    <div class="post-box">
                        <h4><%# Eval("Caption") %></h4>
                        <asp:Repeater ID="rptImages" runat="server" DataSource='<%# Eval("Images") %>'>
                            <ItemTemplate>
                                <img src='<%# ResolveUrl(Eval("Url").ToString()) %>' class="post-img" />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <br />
            <a href="SelectCityForView.aspx">← မြို့အသစ်ရွေးမယ်</a>
        </div>
    </form>
</body>
</html>
