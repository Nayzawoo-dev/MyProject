<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectCity.aspx.cs" Inherits="MyProject.SelectCity" MasterPageFile="~/Site.Master" %>
<%@ Register Src="~/Site.Master" TagName="MasterPage" TagPrefix="uc" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-primary to-secondary text-white py-2">
        <div class="max-w-4xl mx-auto px-2 sm:px-4 lg:px-6 text-center">
            <h1 class="text-3xl md:text-4xl font-bold mb-2">မြို့ရွေးချယ်ပါ</h1>
            <p class="text-lg md:text-xl opacity-90">ပရဟိတလုပ်ငန်းများ Post တင်ရန် မြို့တစ်မြို့ကို ရွေးချယ်ပါ</p>
        </div>
    </section>

    <!-- City Selection Section -->
    <section class="py-4 bg-gray-50 min-h-screen">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
            <!-- Cities Grid -->
            <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4 md:gap-6" id="citiesContainer">
                <asp:Repeater ID="rptCities" runat="server">
                    <ItemTemplate>
                        <div class="city-card group cursor-pointer transform transition-all duration-300 hover:scale-105 hover:-translate-y-2" 
                             data-city-name='<%# Eval("City_Name") %>'
                             onclick="selectCity(<%# Eval("Id") %>)">
                            
                            <!-- City Card -->
                            <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-6 text-center group-hover:shadow-2xl group-hover:border-primary transition-all duration-300">
                                
                                <!-- City Icon -->
                                <div class="w-16 h-16 bg-primary bg-opacity-10 rounded-full flex items-center justify-center mx-auto mb-4 group-hover:bg-opacity-20 transition duration-300">
                                    <svg class="w-8 h-8 text-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path>
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path>
                                    </svg>
                                </div>
                                
                                <!-- City Name -->
                                <h3 class="text-lg font-semibold text-gray-800 group-hover:text-primary transition duration-300 mb-2">
                                    <%# Eval("City_Name") %>
                                </h3>
                                
                                <!-- Selection Indicator -->
                                <div class="w-8 h-1 bg-primary rounded-full mx-auto opacity-0 group-hover:opacity-100 transition duration-300"></div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <!-- Loading Skeleton (Hidden by default) -->
            <div id="loadingSkeleton" class="hidden grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4 md:gap-6">
                <div class="animate-pulse">
                    <div class="bg-gray-300 rounded-2xl p-6 h-40"></div>
                </div>
                <div class="animate-pulse">
                    <div class="bg-gray-300 rounded-2xl p-6 h-40"></div>
                </div>
                <div class="animate-pulse">
                    <div class="bg-gray-300 rounded-2xl p-6 h-40"></div>
                </div>
                <div class="animate-pulse">
                    <div class="bg-gray-300 rounded-2xl p-6 h-40"></div>
                </div>
                <div class="animate-pulse">
                    <div class="bg-gray-300 rounded-2xl p-6 h-40"></div>
                </div>
                <div class="animate-pulse">
                    <div class="bg-gray-300 rounded-2xl p-6 h-40"></div>
                </div>
            </div>
        </div>
    </section>
    <script>
        function selectCity(cityId) {
            // Show loading animation
            document.getElementById('citiesContainer').classList.add('hidden');
            document.getElementById('loadingSkeleton').classList.remove('hidden');

            // Simulate loading delay for better UX
            setTimeout(function () {
                window.location.href = 'UploadPost.aspx?city=' + cityId;
            }, 500);
        }
    </script>

</asp:Content>