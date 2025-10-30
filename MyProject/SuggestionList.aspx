<%@ Page Title="အကြံပြုစာများ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuggestionList.aspx.cs" Inherits="MyProject.SuggestionList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <div class="bg-gradient-to-r from-primary to-secondary text-white py-8">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h1 class="text-2xl md:text-3xl font-bold mb-2">📬 အကြံပြုစာများ</h1>
            <p class="text-lg opacity-90">အသုံးပြုသူများ၏ အကြံဉာဏ်များကို လေ့လာရန်</p>
        </div>
    </div>

    <!-- Main Content -->
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-8">

        <!-- Suggestions List -->
        <div class="space-y-6">
            <asp:Repeater ID="rptSuggestions" runat="server">
                <ItemTemplate>
                    <!-- Suggestion Card -->
                    <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-6 hover:shadow-xl transition duration-300">
                        <!-- Header -->
                        <div class="md:flex items-start md:justify-between mb-4">
                            <div class="flex items-center">
                                <div class="w-10 h-10 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mr-3">
                                    <svg class="w-5 h-5 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                                    </svg>
                                </div>
                                <div>
                                    <h3 class="text-lg font-semibold text-gray-800"><%# Eval("Name") %></h3>
                                </div>
                            </div>
                            <div class="text-sm text-gray-500 mt-4 md:mt-0">
                                <svg class="w-4 h-4 inline mr-1 mb-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                                </svg>
                                <asp:Label ID="lblDate" runat="server" Text='<%# Eval("CreatedDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                            </div>
                        </div>

                        <!-- Suggestion Text -->
                        <div class="bg-gray-50 rounded-xl p-4 border border-gray-200">
                            <p class="text-gray-700 leading-relaxed whitespace-pre-line"><%# Eval("SuggestionText") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <!-- Add New Button -->
            <div class="text-center mb-8">
                <a href="SuggestionAdd.aspx" class="inline-flex items-center bg-primary hover:bg-opacity-90 text-white font-semibold py-3 px-6 rounded-lg transition duration-200 shadow-lg hover:shadow-xl transform hover:-translate-y-1">
                    <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path>
                    </svg>
                    အကြံပြုစာအသစ်ရေးမယ်
                </a>
            </div>
        </div>

        <!-- No Suggestions Panel -->
        <asp:Panel ID="pnlNoSuggestions" runat="server" Visible="false" CssClass="text-center py-12">
            <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-8 max-w-md mx-auto">
                <div class="w-20 h-20 bg-gray-100 rounded-full flex items-center justify-center mx-auto mb-4">
                    <svg class="w-10 h-10 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                </div>
                <h3 class="text-xl font-semibold text-gray-600 mb-2">အကြံပြုစာမရှိသေးပါ</h3>
                <p class="text-gray-500 mb-6">ပထမဆုံးအကြံပြုစာကို ရေးသားသူဖြစ်ရန် ကျေးဇူးပြု၍ စတင်ပါ</p>
            </div>
        </asp:Panel>
    </div>

</asp:Content>
