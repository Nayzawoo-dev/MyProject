<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPosts.aspx.cs" Inherits="MyProject.ViewPosts" MasterPageFile="~/Site.Master" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Header Section -->
    <div class="bg-gradient-to-r from-primary to-secondary text-white py-8">
        <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
            <h1 class="text-2xl md:text-3xl font-bold mb-2">
                <asp:Label ID="lblCityName" runat="server"></asp:Label>သက်ကြီးသူချင်းကူညီစောင့်ရှောက်ရေးအဖွဲ့၏လှုပ်ရှားမှုများ
            </h1>
        </div>
    </div>

    <!-- Main Content -->
    <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <!-- Back Button -->
        <div class="mb-6">
            <a href="SelectCityForView.aspx" class="inline-flex items-center text-primary hover:text-primary-dark font-medium transition duration-200">
                <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
                </svg>
                မြို့ပြန်ရွေးမယ်
            </a>
        </div>

        <!-- Posts Container -->
        <div class="space-y-6">
            <asp:Repeater ID="rptPosts" runat="server">
                <ItemTemplate>
                    <!-- Post Card -->
                    <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-6 hover:shadow-xl transition duration-300">
                        <!-- Caption -->
                        <h3 class="text-xl font-semibold text-gray-800 mb-4 leading-relaxed">
                            <%# Eval("Caption") %>
                        </h3>

                        <!-- Images -->
                        <div class="flex flex-wrap gap-4 mb-4">
                            <asp:Repeater ID="rptImages" runat="server" DataSource='<%# Eval("Images") %>'>
                                <ItemTemplate>
                                    <img 
                                        src='<%# ResolveUrl(Eval("Url").ToString()) %>' 
                                        class="w-32 h-32 object-cover rounded-lg border border-gray-300 hover:border-primary transition duration-200 cursor-pointer"
                                        onclick="openImage(this.src)" />
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- No Posts Message -->
        <asp:Panel ID="pnlNoPosts" runat="server" Visible="false" CssClass="text-center py-12">
            <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-8">
                <svg class="w-16 h-16 text-gray-400 mx-auto mb-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.172 16.172a4 4 0 015.656 0M9 10h.01M15 10h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                </svg>
                <h3 class="text-xl font-semibold text-gray-600 mb-2">မည်သည့် Post မျှမတွေ့ရှိပါ</h3>
                <p class="text-gray-500">ဤမြို့အတွက် ပရဟိတလုပ်ငန်းများ မရှိသေးပါ</p>
            </div>
        </asp:Panel>
    </div>

    <!-- Image Modal -->
    <div id="imageModal" class="fixed inset-0 bg-black bg-opacity-90 hidden items-center justify-center z-50 p-4">
        <div class="relative max-w-4xl max-h-full">
            <img id="modalImage" src="" alt="" class="max-w-full max-h-screen object-contain rounded-lg" />
        </div>
    </div>

    <script>
        function openImage(src) {
            document.getElementById('modalImage').src = src;
            document.getElementById('imageModal').classList.remove('hidden');
            document.getElementById('imageModal').classList.add('flex');
            document.body.style.overflow = 'hidden';
        }

        function closeImage() {
            document.getElementById('imageModal').classList.add('hidden');
            document.getElementById('imageModal').classList.remove('flex');
            document.body.style.overflow = 'auto';
        }

        // Close modal when clicking outside image
        document.getElementById('imageModal').addEventListener('click', function (e) {
            if (e.target === this) closeImage();
        });

        // Close modal with ESC key
        document.addEventListener('keydown', function (e) {
            if (e.key === 'Escape') closeImage();
        });
    </script>

</asp:Content>