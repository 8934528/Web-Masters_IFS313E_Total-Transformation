<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row  border-bottom border-1 border-secondary mt-2">
            <div class="col">
            </div>
            <div class="col-auto text-end">
                <a class="nav-link js-scroll-trigger" href="SignIn.aspx">Sign In</a>
            </div>
            <div class="col-auto text-end">
                <a class="nav-link js-scroll-trigger" href="SignUp.aspx">Sign Up</a>
            </div>
        </div>
        <div class="text-center m-2">
            <h1>Welcome to the Beauty Grooming Platform</h1>
        </div>
        <div class="row text-center">
            <div class="col-4 mt-2">
                <p>Enhance yourself to the best Services we offer</p>
            </div>
            <div class="col-4 mt-2">
                <p>Build some confidence</p>
            </div>
            <div class="col-4 mt-2">
                <p>Destination for beauty and wellness</p>
            </div>
        </div>
        <div class="row">
            <div class="container border-3 m-4">
                <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="IMAGES/download.jpg" class="d-block w-100 rounded" height="620" />
                        </div>
                        <div class="carousel-item">
                            <img src="IMAGES/41%20Hottest%20Cornrows%20and%20Scalp%20Braids%20to%20Show%20Your%20Braider.jpg" class="d-block w-100 rounded" height="620" />
                        </div>
                        <div class="carousel-item">
                            <img src="IMAGES/b455e8042ec2df02ddf42340ce49b5b1.jpg" class="d-block w-100 rounded" height="620" width="620" />
                        </div>
                        <div class="carousel-item">
                            <img src="IMAGES/download%20(1).jpg" class="d-block w-100 rounded" height="620" />
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <div>
            <div class="container text-center">
                <div class="row">
                    <div class="mt-5">
                        <h3>Services
                        </h3>
                    </div>
                    <div>
                        <p class="text-primary-subtle">
                            We Provide All Exclusive services For Clients
                        </p>
                        <p>
                            Let's explore more services offered by Total Transformation
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3">
                        <div class="container bg-body-secondary-subtle">
                            <img src="IMAGES/Zandie's%20Nails.jpg" class="rounded" width="260" height="240" />
                        </div>
                        <div>
                            <h5 class=" mt-2">Nailed It
                            </h5>
                            <p>
                                Your hands and feet never take a day off so make sure you treat them!
                            </p>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="container bg-body-secondary-subtle">
                            <img src="IMAGES/Zintle's%20Hairstyle.jpg" class="rounded" width="260" height="240" />
                        </div>
                        <div>
                            <h5 class=" mt-2">Slayy
                            </h5>
                            <p>
                                A beautiful hairstyle can make your day brighter!
                            </p>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="container bg-body-secondary-subtle">
                            <img src="IMAGES/Zuzu's%20Nails.jpg" class="rounded" width="260" height="240" />
                        </div>
                        <div>
                            <h5 class=" mt-2">Get Cute
                            </h5>
                            <p>
                                Makeup adds a little magic to your day!
                            </p>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="container bg-body-secondary-subtle">
                            <img src="IMAGES/Javas's%20Haircut.jpg" class="rounded" width="260" height="240" />
                        </div>
                        <div>
                            <h5 class=" mt-2">Stay Fresh
                            </h5>
                            <p>
                                Your haircut is like your crown. Wear it with pride!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
