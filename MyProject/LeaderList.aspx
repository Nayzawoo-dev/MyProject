<%@ Page Title="Leader စာရင်း" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaderList.aspx.cs" Inherits="MyProject.LeaderList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <div class="bg-gradient-to-r from-primary to-secondary text-white py-2">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h1 class="text-2xl md:text-3xl font-bold mb-2">တာဝန်ရှိသူများ</h1>
            <p class="text-lg opacity-90">ပရဟိတအဖွဲ့တာဝန်ရှိသူများ၏ ဆက်သွယ်ရန်အချက်အလက်များ</p>
        </div>
    </div>

    <!-- Main Content -->
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <!-- Leaders Grid -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <asp:Repeater ID="rptLeaders" runat="server">
                <ItemTemplate>
                    <!-- Leader Card -->
                    <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-6 hover:shadow-xl transition duration-300 transform hover:-translate-y-1">
                        <!-- Leader Icon and Info -->
                        <div class="flex items-center mb-4">
                            <div class="w-12 h-12 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mr-4">
                                <svg class="w-6 h-6 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                                </svg>
                            </div>
                            <div>
                                <h3 class="text-lg font-semibold text-gray-800"><%# Eval("Name") %></h3>
                                <p class="text-sm text-gray-500">တာဝန်ရှိသူ</p>
                            </div>
                        </div>

                        <!-- Phone Number -->
                        <div class="flex items-center text-gray-700">
                            <svg class="w-5 h-5 text-primary mr-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                            </svg>
                            <a href="tel:<%# Eval("Phone_No") %>" class="hover:text-primary transition duration-200">
                                <%# Eval("Phone_No") %>
                            </a>
                        </div>

                        <!-- Call Button -->
                        <div class="mt-4 pt-4 border-t border-gray-100">
                            <a href="tel:<%# Eval("Phone_No") %>" class="w-full bg-primary hover:bg-opacity-90 text-white font-semibold py-2 px-4 rounded-lg transition duration-200 text-center block">
                                <svg class="w-4 h-4 inline mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"></path>
                                </svg>
                                ဖုန်းခေါ်မယ်
                            </a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- No Leaders Panel -->
        <asp:Panel ID="pnlNoLeaders" runat="server" Visible="false" CssClass="text-center py-12">
            <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-8 max-w-md mx-auto">
                <div class="w-20 h-20 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                    <svg class="w-10 h-10 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                </div>
                <h3 class="text-xl font-semibold text-gray-600 mb-2">တာဝန်ယူသူမရှိသေးပါ</h3>
                <p class="text-gray-500">ကျေးဇူးပြု၍ နောက်မှထပ်စစ်ဆေးပါ</p>
            </div>
        </asp:Panel>
    </div>

</asp:Content>