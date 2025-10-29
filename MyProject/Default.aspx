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
                <a href="About.aspx" class="bg-white text-primary px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition duration-300 text-lg shadow-lg">
                    ဖွဲ့စည်းရည်ရွယ်ချက်များ
                </a>
                <a href="Donate.aspx" class="bg-accent text-white px-8 py-4 rounded-lg font-semibold hover:bg-opacity-90 transition duration-300 text-lg shadow-lg">
                    လှူဒါန်းရန်
                </a>
            </div>
        </div>
    </section>

    <!-- Mission Cards Section -->
    <section class="py-16 bg-gray-50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-800 mb-4">ကျွန်ုပ်တို့၏ ရည်ရွယ်ချက်များ</h2>
                <p class="text-gray-600 text-lg max-w-2xl mx-auto">သက်ကြီးရွယ်အိုများအတွက် ပိုမိုကောင်းမွန်သော ဘဝအရည်အသွေးကို ဖန်တီးပေးရန်</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                <!-- Mission 1 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <svg class="w-8 h-8 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">လူမှုရေးထောက်ပံ့မှု</h3>
                    <p class="text-gray-600 text-center">သက်ကြီးရွယ်အိုများ လူမှုရေးအရ တစ်ဦးနှင့်တစ်ဦး ဆက်သွယ်နိုင်ရန် နေရာထိုင်ခင်းများ ဖန်တီးပေးခြင်း</p>
                </div>

                <!-- Mission 2 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <svg class="w-8 h-8 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">နေအိမ်စောင့်ရှောက်မှု</h3>
                    <p class="text-gray-600 text-center">အိမ်တွင်နေထိုင်သော သက်ကြီးရွယ်အိုများအား နေ့စဉ်လိုအပ်ချက်များ ဖြည့်ဆည်းပေးခြင်း</p>
                </div>

                <!-- Mission 3 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <svg class="w-8 h-8 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">ကျန်းမာရေးစောင့်ရှောက်မှု</h3>
                    <p class="text-gray-600 text-center">သက်ကြီးရွယ်အိုများ၏ ကျန်းမာရေးကို ပုံမှန်စစ်ဆေးပေးခြင်းနှင့် လိုအပ်သော ဆေးဝါးကုသမှုများ ဆောင်ရွက်ပေးခြင်း</p>
                </div>

                <!-- Mission 4 -->
                <div class="bg-white rounded-xl shadow-lg p-6 hover:shadow-xl transition duration-300 border border-gray-100">
                    <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mb-4 mx-auto">
                        <svg class="w-8 h-8 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3 text-center">ပညာပေးလုပ်ငန်းများ</h3>
                    <p class="text-gray-600 text-center">သက်ကြီးရွယ်အိုများအတွက် ကျန်းမာရေးဗဟုသုတများနှင့် လူမှုရေးဆိုင်ရာ အသိပညာပေးခြင်း</p>
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
                    <a href="Donate.aspx" class="bg-white text-primary px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition duration-300 text-lg shadow-lg">
                        လှူဒါန်းရန်
                    </a>
                    <a href="Contact.aspx" class="bg-transparent border-2 border-white text-white px-8 py-4 rounded-lg font-semibold hover:bg-white hover:bg-opacity-10 transition duration-300 text-lg">
                        ဆက်သွယ်ရန်
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
                <a href="Suggestion.aspx" class="inline-flex items-center bg-primary text-white px-8 py-4 rounded-lg font-semibold hover:bg-opacity-90 transition duration-300 text-lg shadow-lg">
                    <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"></path>
                    </svg>
                    အကြံပြုစာရေးသားရန်
                </a>
            </div>
        </div>
    </section>

</asp:Content>