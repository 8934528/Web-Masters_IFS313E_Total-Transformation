<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="ClientDashboard.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row text-center mt-2">
            <h3>SERVICES
            </h3>
            <p class="mx-4 text-primary">
                click on the image to select your desired service
            </p>
        </div>
        <div class="row">
            <div class="col-3">
                <div class="container mt-2 bg-secondary-subtle border border-black">
                    <div id="welcomeContainer" class="mt-4" runat="server">
                        <div>
                            <h4>Welcome</h4>
                            <h6>
                                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                            </h6>
                        </div>
                        <div class="mt-5 text-center">
                            View Bookings                            
                        </div>
                        <div class="mt-0 text-center">
                            <asp:Button ID="btnView" runat="server" class="rounded-4 form-control border border-secondary" Text="PENDING" OnClick="btnView_Click1" />
                        </div>
                        <div class="mt-2 text-center">
                            <asp:Button ID="btnAccepted" runat="server" class="rounded-4 form-control border border-secondary" Text="ACCEPTED" OnClick="btnAccepted_Click1" />
                        </div>

                    </div>
                    <div class="mt-5 mb-5 text-center">
                        <asp:Button ID="btnSignOut" runat="server" class="rounded-4 form-control bg-primary-subtle border border-secondary" Text="SIGN OUT" OnClick="btnSignOut_Click" />
                    </div>
                </div>
            </div>
            <div class="col-9">
                <div class="row mt-2">
                    <div class="col-6 text-center">
                        <div class="container border border-2">
                            <asp:ImageButton ID="ImageButton1" runat="server" class="rounded mt-2" ImageUrl="~/IMAGES/Services/styling.jpg" Width="260" Height="310" PostBackUrl="~/HairAndStyling.aspx" />
                            <div>
                                <h5>Hair & Styling
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 text-center">
                        <div class="container border border-2">
                            <asp:ImageButton ID="ImageButton2" runat="server" class="rounded mt-2" ImageUrl="~/IMAGES/Services/Makeup.jpg" Width="260" Height="310" PostBackUrl="~/MakeUp.aspx" />
                            <div>
                                <h5>Makeup
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row  mt-2">
                    <div class="col-6 text-center">
                        <div class="container border border-2">
                            <asp:ImageButton ID="ImageButton3" runat="server" class="rounded mt-2" ImageUrl="~/IMAGES/Services/barbering.jpg" Width="260" Height="310" PostBackUrl="~/Barbering.aspx" />
                            <div>
                                <h5>Barbering
                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-6  text-center">
                        <div class="container border border-2">
                            <asp:ImageButton ID="ImageButton4" runat="server" class="rounded mt-2" ImageUrl="~/IMAGES/Services/Nails.jpg" Width="260" Height="310" PostBackUrl="~/Nails.aspx" />
                            <div>
                                <h5>Nails
                                </h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
