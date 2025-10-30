<%@ Page Title="အကြံပြုစာရေးပါ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SuggestionAdd.aspx.cs" Inherits="MyProject.SuggestionAdd" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <div class="bg-gradient-to-r from-primary to-secondary text-white py-8">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h1 class="text-2xl md:text-3xl font-bold mb-2">အကြံပြုစာရေးပါ</h1>
            <p class="text-lg opacity-90">သင့်ရဲ့အကြံဉာဏ်များက ကျွန်ုပ်တို့အတွက် အဖိုးတန်ပါသည်</p>
        </div>
    </div>

    <!-- Suggestion Form -->
    <div class="max-w-2xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <!-- Success Message -->
        <asp:Panel ID="pnlMessage" runat="server" Visible="false" CssClass="mb-6 p-4 bg-green-100 border border-green-400 text-green-700 rounded-2xl">
            <asp:Label ID="lblMessage" runat="server" CssClass="font-medium"></asp:Label>
        </asp:Panel>

        <!-- Form Card -->
        <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-6 md:p-8">
            <!-- Name Field -->
            <div class="mb-6">
                <label for="txtName" class="block text-lg font-semibold text-gray-800 mb-3">
                    အမည်
                </label>
                <asp:TextBox 
                    ID="txtName" 
                    runat="server" 
                    CssClass="w-full px-4 py-3 rounded-xl border border-gray-300 focus:border-primary focus:ring-2 focus:ring-primary focus:ring-opacity-20 transition duration-200 text-gray-700 placeholder-gray-400"
                    placeholder="သင့်နာမည်ထည့်ပါ">
                </asp:TextBox>
            </div>

            <!-- Suggestion Field -->
            <div class="mb-8">
                <label for="txtSuggestion" class="block text-lg font-semibold text-gray-800 mb-3">
                    အကြံပြုစာ
                </label>
                <asp:TextBox 
                    ID="txtSuggestion" 
                    runat="server" 
                    TextMode="MultiLine" 
                    Rows="6"
                    CssClass="w-full px-4 py-3 rounded-xl border border-gray-300 focus:border-primary focus:ring-2 focus:ring-primary focus:ring-opacity-20 transition duration-200 text-gray-700 placeholder-gray-400 resize-none"
                    placeholder="အကြံပြုစာရေးပါ...">
                </asp:TextBox>
            </div>

            <!-- Submit Button -->
            <div class="text-center">
                <asp:Button 
                    ID="btnSubmit" 
                    runat="server" 
                    Text="တင်မယ်" 
                    OnClick="btnSubmit_Click" 
                    OnClientClick="var btn=this; setTimeout(function(){btn.value='တင်နေသည်...';btn.disabled=true;}, 5); return true;"
                    CssClass="bg-primary hover:bg-opacity-90 text-white font-semibold py-3 px-8 rounded-lg transition duration-200 shadow-lg hover:shadow-xl transform hover:-translate-y-1 cursor-pointer text-lg" />
            </div>
        </div>

        <!-- Help Text -->
        <div class="mt-6 text-center text-gray-600">
            <p class="flex items-center justify-center">
                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
                သင့်ရဲ့အကြံဉာဏ်များကို ကျေးဇူးတင်စွာဖြင့် လက်ခံပါသည်
            </p>
        </div>
    </div>

</asp:Content>