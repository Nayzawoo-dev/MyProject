<%@ Page Title="Leader များစီမံရန်" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaderManage.aspx.cs" Inherits="MyProject.LeaderManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <div class="bg-gradient-to-r from-primary to-secondary text-white py-2">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h1 class="text-2xl md:text-3xl font-bold mb-2">တာဝန်ရှိသူစာရင်းစီမံခြင်း</h1>
            <p class="text-lg opacity-90">ပရဟိတအဖွဲ့တာဝန်ရှိသူများကို စီမံခန့်ခွဲရန်</p>
        </div>
    </div>

    <!-- Main Content -->
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <!-- Success Message -->
        <asp:Panel ID="pnlMessage" runat="server" Visible="false" CssClass="mb-6 p-4 bg-green-100 border border-green-400 text-green-700 rounded-2xl">
            <asp:Label ID="lblMessage" runat="server" CssClass="font-medium"></asp:Label>
        </asp:Panel>

        <!-- Add/Edit Form -->
        <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-6 md:p-8 mb-8">
            <h2 class="text-xl font-semibold text-gray-800 mb-6">
                <asp:Label ID="lblFormTitle" runat="server" Text="တာဝန်ရှိသူအသစ်ထည့်ရန်"></asp:Label>
            </h2>
            
            <asp:HiddenField ID="hfId" runat="server" />
            
            <!-- Name Field -->
            <div class="mb-6">
                <label for="txtName" class="block text-lg font-semibold text-gray-800 mb-3">
                    အမည်
                </label>
                <asp:TextBox 
                    ID="txtName" 
                    runat="server" 
                    CssClass="w-full px-4 py-3 rounded-xl border border-gray-300 focus:border-primary focus:ring-2 focus:ring-primary focus:ring-opacity-20 transition duration-200 text-gray-700 placeholder-gray-400"
                    placeholder="တာဝန်ရှိသူအမည်">
                </asp:TextBox>
            </div>

            <!-- Phone Field -->
            <div class="mb-6">
                <label for="txtPhone" class="block text-lg font-semibold text-gray-800 mb-3">
                    ဖုန်းနံပါတ်
                </label>
                <asp:TextBox 
                    ID="txtPhone" 
                    runat="server" 
                    CssClass="w-full px-4 py-3 rounded-xl border border-gray-300 focus:border-primary focus:ring-2 focus:ring-primary focus:ring-opacity-20 transition duration-200 text-gray-700 placeholder-gray-400"
                    placeholder="09xxxxxxx">
                </asp:TextBox>
            </div>

            <!-- Action Buttons -->
            <div class="flex flex-col sm:flex-row gap-4">
                <asp:Button 
                    ID="btnSave" 
                    runat="server" 
                    Text="ထည့်မယ်" 
                    OnClick="btnSave_Click" 
                    OnClientClick="var btn=this; setTimeout(function(){btn.value='ထည့်နေသည်...';btn.disabled=true;}, 5); return true;"
                    CssClass="bg-primary hover:bg-opacity-90 text-white font-semibold py-3 px-6 rounded-lg transition duration-200 shadow-lg hover:shadow-xl flex-1 text-center" />
                
                <asp:Button 
                    ID="btnCancel" 
                    runat="server" 
                    Text="မပြင်တော့ပါ" 
                    OnClick="btnCancel_Click" 
                    Visible="false"
                    CssClass="bg-gray-500 hover:bg-gray-600 text-white font-semibold py-3 px-6 rounded-lg transition duration-200 shadow-lg hover:shadow-xl flex-1 text-center" />
            </div>
        </div>

        <!-- Leaders List -->
        <div class="bg-white rounded-2xl shadow-lg border border-gray-200 overflow-hidden">
            <!-- Table Header -->
            <div class="bg-gray-50 px-6 py-4 border-b border-gray-200">
                <h3 class="text-lg font-semibold text-gray-800">တာဝန်ရှိသူစာရင်း</h3>
            </div>

            <!-- Leaders Table -->
            <asp:GridView 
                ID="gvLeaders" 
                runat="server" 
                AutoGenerateColumns="False" 
                OnRowCommand="gvLeaders_RowCommand" 
                DataKeyNames="Id"
                CssClass="w-full"
                ShowHeader="false"
                GridLines="None">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="border-b border-gray-200 last:border-b-0">
                                <div class="px-6 py-4">
                                    <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
                                        <!-- Leader Info -->
                                        <div class="flex-1">
                                            <div class="flex items-center mb-2">
                                                <div class="w-10 h-10 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mr-3">
                                                    <svg class="w-5 h-5 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                                                    </svg>
                                                </div>
                                                <div>
                                                    <h4 class="text-lg font-semibold text-gray-800"><%# Eval("Name") %></h4>
                                                    <p class="text-gray-600">
                                                        <svg class="w-4 h-4 inline mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                                                        </svg>
                                                        <%# Eval("Phone_No") %>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Action Buttons -->
                                        <div class="flex gap-2">
                                            <asp:Button 
                                                runat="server" 
                                                CommandName="EditLeader" 
                                                CommandArgument='<%# Eval("Id") %>' 
                                                Text="ပြင်မယ်" 
                                                CssClass="bg-yellow-500 hover:bg-yellow-600 text-white font-semibold py-2 px-4 rounded-lg transition duration-200 text-sm" />
                                            
                                            <asp:Button 
                                                runat="server" 
                                                CommandName="DeleteLeader" 
                                                CommandArgument='<%# Eval("Id") %>' 
                                                Text="ဖျက်မယ်" 
                                                OnClientClick="return confirm('သင်ဖျက်ချင်တာသေချာပါသလား?');"
                                                CssClass="bg-red-500 hover:bg-red-600 text-white font-semibold py-2 px-4 rounded-lg transition duration-200 text-sm" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <!-- No Leaders Panel -->
            <asp:Panel ID="pnlNoLeaders" runat="server" Visible="false" CssClass="text-center py-12">
                <div class="max-w-md mx-auto px-6">
                    <div class="w-20 h-20 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                        <svg class="w-10 h-10 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-600 mb-2">တာဝန်ယူသူမရှိသေးပါ</h3>
                    <p class="text-gray-500">ပထမဆုံး Leader ကို ကျေးဇူးပြု၍ ထည့်သွင်းပါ</p>
                </div>
            </asp:Panel>
        </div>
    </div>

</asp:Content>