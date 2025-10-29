<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadPost.aspx.cs" Inherits="MyProject.UploadPost" MasterPageFile="~/Site.Master" %>

<%@ Register Src="~/Site.Master" TagName="MasterPage" TagPrefix="uc" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-primary to-secondary text-white py-2">
        <div class="max-w-4xl mx-auto px-2 sm:px-4 lg:px-6 text-center">
            <h1 class="text-2xl md:text-3xl font-bold mb-2">ပရဟိတလုပ်ငန်းများ Post တင်ပါ</h1>
            <p class="text-lg opacity-90">
                <asp:Label ID="lblCityName" runat="server" CssClass="font-semibold"></asp:Label>
                မြို့အတွက်
            </p>
        </div>
    </section>

    <!-- Upload Form Section -->
    <section class="py-8 bg-gray-50 min-h-screen">
        <div class="max-w-2xl mx-auto px-4 sm:px-6 lg:px-8">
            <!-- Success Message -->
            <asp:Panel ID="pnlMessage" runat="server" Visible="false" CssClass="mb-6 p-4 bg-green-100 border border-green-400 text-green-700 rounded-2xl">
                <asp:Label ID="lblMessage" runat="server" CssClass="font-medium"></asp:Label>
            </asp:Panel>

            <!-- Upload Form Card -->
            <div class="bg-white rounded-2xl shadow-lg border border-gray-200 p-6 md:p-8">
                <!-- Back Button -->
                <div class="mb-6">
                    <a href="SelectCity.aspx" class="inline-flex items-center text-primary hover:text-primary-dark font-medium transition duration-200">
                        <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 19l-7-7m0 0l7-7m-7 7h18"></path>
                        </svg>
                        မြို့ပြန်ရွေးမယ်
                    </a>
                </div>

                <!-- Caption Field -->
                <div class="mb-6">
                    <label for="txtCaption" class="block text-lg font-semibold text-gray-800 mb-3">
                        လုပ်ဆောင်ချက်အကြောင်း
                    </label>
                    <asp:TextBox
                        ID="txtCaption"
                        runat="server"
                        TextMode="MultiLine"
                        Rows="4"
                        placeholder="သက်ကြီးရွယ်အိုများအတွက် ပရဟိတလုပ်ငန်းအကြောင်း ရေးသားပါ..."
                        CssClass="w-full px-4 py-3 rounded-xl border border-gray-300 focus:border-primary focus:ring-2 focus:ring-primary focus:ring-opacity-20 transition duration-200 text-gray-700 resize-none shadow-sm">
                    </asp:TextBox>
                </div>

                <!-- Image Upload Section -->
                <div class="mb-8">
                    <label class="block text-lg font-semibold text-gray-800 mb-3">
                        ဓာတ်ပုံများ Upload လုပ်ရန်
                    </label>

                    <!-- Upload Box -->
                    <div class="border-2 border-dashed border-gray-300 rounded-2xl p-6 text-center hover:border-primary transition duration-200 bg-gray-50">
                        <div class="max-w-sm mx-auto">
                            <!-- Image Preview -->
 <div id="previewContainer" class="preview-container mt-4 hidden">
     <div class="flex flex-wrap gap-4 justify-center">
         <!-- Preview images will be inserted here -->
     </div>
 </div>
                            <p class="text-gray-600 mb-4">ကျေးဇူးပြု၍ ဓာတ်ပုံများကို ရွေးချယ်ပါ</p>
                            <asp:FileUpload
                                ID="fuImages"
                                runat="server"
                                AllowMultiple="true"
                                onchange="previewImages(event)"
                                CssClass="hidden" />
                            <button
                                type="button"
                                onclick="document.getElementById('<%= fuImages.ClientID %>').click()"
                                class="bg-primary text-white px-6 py-3 rounded-lg font-semibold hover:bg-opacity-90 transition duration-200 shadow-sm">
                                ဓာတ်ပုံများ ရွေးချယ်ရန်
                            </button>
                            <p class="text-sm text-gray-500 mt-3">PNG, JPG, JPEG files (Max 10MB each)</p>
                        </div>
                    </div>

                   

                    <!-- Image Count -->
                    <div id="imageCount" class="text-center text-gray-600 mt-4 hidden">
                        <span id="selectedCount">0</span> ပုံ ရွေးချယ်ထားသည်
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <asp:Button
                        ID="btnSubmit"
                        runat="server"
                        Text="Post တင်မယ်"
                        OnClick="btnSubmit_Click"
                        OnClientClick="var btn=this; setTimeout(function(){btn.text=Posting.....;btn.disabled=true;}, 5); return true;"
                        CssClass="bg-primary hover:bg-opacity-90 text-white font-semibold py-4 px-12 rounded-lg transition duration-200 shadow-lg hover:shadow-xl transform hover:-translate-y-1 cursor-pointer text-lg" />
                </div>
            </div>

            <!-- Help Text -->
            <div class="mt-6 text-center text-gray-600">
                <p class="flex items-center justify-center">
                    <svg class="w-5 h-5 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                    </svg>
                    Post မတင်ခင်ပုံများကိုသေချာစွာစိစစ်အတည်ပြုပြီးမှတင်ပေးပါရန်               
                </p>
            </div>
        </div>
    </section>

    <script>
        // Image preview function
        function previewImages(event) {
            const files = event.target.files;
            const previewContainer = document.getElementById("previewContainer");
            const imageCount = document.getElementById("imageCount");
            const selectedCount = document.getElementById("selectedCount");
            const previewFlex = previewContainer.querySelector('.flex');

            // Clear previous previews
            previewFlex.innerHTML = "";
            previewContainer.classList.add('hidden');
            imageCount.classList.add('hidden');

            if (files.length > 0) {
                previewContainer.classList.remove('hidden');
                imageCount.classList.remove('hidden');
                selectedCount.textContent = files.length;

                for (let i = 0; i < files.length; i++) {
                    const file = files[i];
                    if (!file.type.startsWith("image/")) continue;

                    const reader = new FileReader();
                    reader.onload = function (e) {
                        const imgWrapper = document.createElement("div");
                        imgWrapper.className = "relative group";

                        const img = document.createElement("img");
                        img.src = e.target.result;
                        img.className = "w-24 h-24 object-cover rounded-xl border-2 border-gray-200 group-hover:border-primary transition duration-200 shadow-sm";

                        const removeBtn = document.createElement("button");
                        removeBtn.type = "button";
                        removeBtn.innerHTML = "&times;";
                        removeBtn.className = "absolute -top-2 -right-2 w-6 h-6 bg-red-500 text-white rounded-full flex items-center justify-center text-sm font-bold opacity-0 group-hover:opacity-100 transition duration-200 hover:bg-red-600";
                        removeBtn.onclick = function () {
                            imgWrapper.remove();
                            updateImageCount();
                        };

                        imgWrapper.appendChild(img);
                        imgWrapper.appendChild(removeBtn);
                        previewFlex.appendChild(imgWrapper);
                    };
                    reader.readAsDataURL(file);
                }
            }
        }

        function updateImageCount() {
            const previewContainer = document.getElementById("previewContainer");
            const imageCount = document.getElementById("imageCount");
            const selectedCount = document.getElementById("selectedCount");
            const imageWrappers = previewContainer.querySelectorAll('.relative.group');

            selectedCount.textContent = imageWrappers.length;

            if (imageWrappers.length === 0) {
                previewContainer.classList.add('hidden');
                imageCount.classList.add('hidden');
            }
        }
    </script>

    <style>
        .preview-container {
            transition: all 0.3s ease;
        }

        /* Custom file upload button styling */
        input[type="file"] {
            cursor: pointer;
        }

        /* Textarea focus styles */
        textarea:focus {
            outline: none;
        }
    </style>

</asp:Content>
