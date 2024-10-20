<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="Barbering.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-2 mt-2">
                    <asp:Button ID="btnBack3" runat="server" Text="Back" CssClass="rounded-3" OnClick="btnBack3_Click" />
                </div>
                <div class="col-10 text-center mt-3">
                    <h3>Therapy is Expensive. Get a HairCut Instead
                    </h3>
                    <p class="text-primary">
                        Click The Image Of Your Choice
                    </p>
                </div>
            </div>
            <div class="container">
                <div class="row mt-3">
                    <div class="row  text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="rounded" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Brush Cut" ImageUrl="~/IMAGES/Barbering/bursh.jpg" />
                            <h6>Brush Cut | R40
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton2" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut2.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Low Fade" />
                            <h6>Low Fade | R50
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton3" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut3.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Taper Fade" />
                            <h6>Taper Fade | R60
                            </h6>
                        </div>
                    </div>

                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton4" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut4.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Mohawk" />
                            <h6>Mohawk | R60
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton5" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut5.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Low Fade Waves" />
                            <h6>Low Fade Waves | R55
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton6" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut6.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Dreaded Mid Fade" />
                            <h6>Dreaded Mid Fade | R65
                            </h6>
                        </div>
                    </div>

                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton7" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut7.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=High Fade" />
                            <h6>High Fade | R60
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton8" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut8.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Cut and Dye" />
                            <h6>Cut & Dye | R70
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton9" runat="server" class="rounded" ImageUrl="~/IMAGES/Barbering/cut9.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Side Part" />
                            <h6>Brush Cut | R60
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
