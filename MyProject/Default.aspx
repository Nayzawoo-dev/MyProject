<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-primary to-secondary text-white py-16 md:py-24">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h1 class="text-4xl md:text-6xl font-bold mb-6 leading-tight">OPF Foundation</h1>
            <p class="text-xl md:text-2xl mb-8 opacity-90 max-w-3xl mx-auto leading-relaxed">
                သက်ကြီးရွယ်အိုများ၏ ဘဝအရည်အသွေးမြင့်မားရေးနှင့် လူမှုအသိုင်းအဝိုင်းအတွင်း ဂရုစိုက်မှုပေးရန် ရည်ရွယ်ချက်ဖြင့် ဖွဲ့စည်းတည်ထောင်ထားပါသည်။
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center mt-10">
                <a href="SelectCityForView.aspx" class="bg-white text-primary px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition duration-300 text-lg shadow-lg">OPF‌ဖောင်ဒေးရှင်း၏ မြို့နယ်အလိုက်လှုပ်ရှားမှုများ
                </a>
            </div>
        </div>
    </section>

    <!-- Mission Cards Section -->
    <section class="py-16 bg-gray-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-800 mb-4">OPFဖောင်ဒေးရှင်း၏ရည်ရွယ်ချက်နှင့်အခြားအကြောင်းအရာများ</h2>
                <p class="text-gray-600 text-lg max-w-2xl mx-auto">အကျယ်တဝင့်ဖော်ပြချက်များကိုအောက်တွင်ဖတ်ရှုနိုင်သည်။</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                <!-- Mission 1 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <asp:Image runat="server" ImageUrl="~/uploads/images/question.png" CssClass="rounded-full" />
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">OPF ဖောင်ဒေးရှင်းဆိုတာဘာလဲ?</h3>
                </div>

                <!-- Mission 2 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <asp:Image runat="server" ImageUrl="~/uploads/images/purpose.png" CssClass="rounded-full" />
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">OPF ဖောင်ဒေးရှင်း၏ရည်ရွယ်ချက်</h3>
                </div>

                <!-- Mission 3 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <asp:Image runat="server" ImageUrl="~/uploads/images/foundation.png" CssClass="rounded-full" />
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">OPF ဖောင်ဒေးရှင်း၏ပညာပေးလုပ်ငန်းများ</h3>
                </div>

                <!-- Mission 4 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <asp:Image runat="server" ImageUrl="~/uploads/images/team.png" CssClass="rounded-full" />
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">OPF ‌ဖောင်ဒေးရှင်း၏ဖွဲ့စည်းထားမှုအခြေအနေ</h3>
                </div>
            </div>
        </div>
    </section>

    <!-- Call to Action Section -->
    <section class="py-16 bg-white">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="bg-gradient-to-r from-primary to-secondary rounded-2xl shadow-2xl p-8 md:p-12 text-center text-white">
                <h2 class="text-3xl md:text-4xl font-bold mb-6">ကျေးဇူးပြု၍ ကျွန်ုပ်တို့၏ လုပ်ငန်းများကို ပံ့ပိုးကူညီပေးပါ</h2>
                <p class="text-xl mb-8 max-w-2xl mx-auto opacity-90">
                    သင့်ရဲ့လှူဒါန်းမှုတစ်ခုက သက်ကြီးရွယ်အိုတစ်ဦး၏ ဘဝကို ပြောင်းလဲစေနိုင်ပါသည်။
                </p>
                <div class="flex flex-col sm:flex-row gap-4 justify-center">
                    <a href="LeaderList.aspx" class="bg-white text-primary px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition duration-300 text-lg shadow-lg">လှူဒါန်းလိုပါကဆက်သွယ်ရန်

                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- Suggestion Section -->
    <section class="py-16 bg-gray-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <div class="max-w-3xl mx-auto">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-800 mb-6">သင့်ရဲ့အကြံပြုချက်များ</h2>
                <p class="text-gray-600 text-lg mb-8">
                    ကျွန်ုပ်တို့၏ လုပ်ငန်းများကို ပိုမိုကောင်းမွန်အောင် ကူညီနိုင်မည့် သင့်ရဲ့အကြံဉာဏ်များကို လက်ခံရယူလိုပါသည်။
                </p>
                <a href="SuggestionAdd.aspx" class="inline-flex items-center bg-primary text-white px-8 py-4 rounded-lg font-semibold hover:bg-opacity-90 transition duration-300 text-lg shadow-lg">
                    <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"></path>
                    </svg>
                    အကြံပြုစာရေးသားရန်
                </a>
            </div>
        </div>
    </section>

</asp:Content>
