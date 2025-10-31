<%@ Page Title="OPF Foundation အကြောင်း" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyProject.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!-- About Section -->
    <section class="py-16 bg-white">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
                <!-- Content -->
                <div>
                    <h2 class="text-3xl md:text-4xl font-bold text-gray-800 mb-6">OPF Foundation ဆိုတာ</h2>
                    <div class="space-y-4 text-gray-600 leading-relaxed">
                        <p class="text-lg">
                            OPF Foundation သည် သက်ကြီးရွယ်အိုများ၏ ဘဝအရည်အသွေး မြင့်မားရေး၊ ကျန်းမာရေး စောင့်ရှောက်မှုနှင့် လူမှုရေး အထောက်အပံ့များ ပေးရန်အတွက် 
                            ဖွဲ့စည်းတည်ထောင်ထားသော ပရဟိတအဖွဲ့အစည်းတစ်ခုဖြစ်ပါသည်။
                        </p>
                        <p class="text-lg">
                            ကျွန်ုပ်တို့သည် သက်ကြီးရွယ်အိုများအား ဂရုစိုက်မှု၊ ချစ်ခြင်းမေတ္တာနှင့် လေးစားမှုတို့ဖြင့် ဆက်ဆံပြီး သူတို့၏ နေ့စဉ်ဘဝကို 
                            ပိုမိုကောင်းမွန်အောင် ကူညီဆောင်ရွက်ပေးလျက်ရှိပါသည်။
                        </p>
                    </div>
                </div>

                <!-- Image/Icon -->
                <div class="flex justify-center">
                    <div class="w-full max-w-md bg-primary bg-opacity-10 rounded-3xl p-8">
                        <div class="text-center">
                            <div class="w-24 h-24 bg-primary rounded-full flex items-center justify-center mx-auto mb-6">
                                <asp:Image runat="server" ImageUrl="~/uploads/images/health.jpg" CssClass="rounded-full" />
                            </div>
                            <h3 class="text-2xl font-semibold text-primary mb-4">လူကြီးသူမများအတွက်</h3>
                            <p class="text-gray-600">ဂရုစိုက်မှု၊ ချစ်ခြင်းမေတ္တာနှင့် လေးစားမှုဖြင့်</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Values Section -->
    <section class="py-16 bg-white">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-12">
                <p class="text-xl text-gray-600 max-w-2xl mx-auto">ကျွန်ုပ်တို့၏ လုပ်ဆောင်ချက်အားလုံးကို guidance ပေးသော အခြေခံမူများ</p>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Value 1 -->
                <div class="text-center">
                    <div class="w-20 h-20 bg-primary bg-opacity-10 rounded-2xl flex items-center justify-center mx-auto mb-6">
                        <svg class="w-10 h-10 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3">ကရုဏာတရား</h3>
                    <p class="text-gray-600">သက်ကြီးရွယ်အိုများအား ကရုဏာတရားဖြင့် ချစ်ခြင်းမေတ္တာနှင့် ဂရုစိုက်မှုပေးခြင်း</p>
                </div>

                <!-- Value 2 -->
                <div class="text-center">
                    <div class="w-20 h-20 bg-primary bg-opacity-10 rounded-2xl flex items-center justify-center mx-auto mb-6">
                        <svg class="w-10 h-10 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a2 2 0 01-2-2v-1m8-8V4a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h8l4 4v-4z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3">လေးစားမှု</h3>
                    <p class="text-gray-600">လူကြီးသူမများ၏ အတွေ့အကြုံနှင့် အသိပညာကို တန်ဖိုးထားကာ လေးစားမှုပြခြင်း</p>
                </div>

                <!-- Value 3 -->
                <div class="text-center">
                    <div class="w-20 h-20 bg-primary bg-opacity-10 rounded-2xl flex items-center justify-center mx-auto mb-6">
                        <svg class="w-10 h-10 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold text-gray-800 mb-3">ယုံကြည်စိတ်ချမှု</h3>
                    <p class="text-gray-600">ကျွန်ုပ်တို့၏ ဝန်ဆောင်မှုများတွင် ယုံကြည်စိတ်ချရမှုနှင့် ပွင့်လင်းမြင်သာမှုရှိခြင်း</p>
                </div>
            </div>
        </div>
    </section>

</asp:Content>