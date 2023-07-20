<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="restaurant_order_app.User.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- about section -->

    <section class="about_section layout_padding">
        <div class="container  ">

            <div class="row">
                <div class="col-md-6 ">
                    <div class="img-box">
                        <img src="../TemplateFiles/images/about-img.png" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>WELCOME TO AlKAREEM
                            </h2>
                        </div>
                        <p>
                            A Halal Meat Grocery and Takeout in Milton, Ontario. This unique grocery store and takeout restaurant offer a wide range of high-quality 
                            halal meat products and delicious prepared meals. The friendly and knowledgeable staff provide exceptional service, assisting
                            customers in finding the perfect cut and answering any questions. The takeout counter features mouthwatering halal meals 
                            inspired by various cuisines, ensuring there's something for every palate. With a commitment to cleanliness and food safety, 
                            AlKareem restaurant is a trusted destination for the Muslim community and anyone seeking high-quality halal products and flavorful 
                            meals.
                        </p>
                        <a href="Contact.aspx">Contact us
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end about section -->
</asp:Content>
