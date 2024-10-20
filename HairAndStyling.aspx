<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="HairAndStyling.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-2 mt-2">
                    <asp:Button ID="btnBack2" runat="server" Text="Back" CssClass="rounded-3" OnClick="btnBack2_Click" />
                </div>
                <div class="col-10 text-center mt-3">
                    <h3>Great Hair Does Not Happen by Chance, it Happens by Appointment
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
                            <asp:ImageButton ID="ImageButton1" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style1.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Pixie Cut" />
                            <h6>Pixie Cut | R250
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton2" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style3.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Cut and Snoopy" />
                            <h6>Cut & Snoopy | R200
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton3" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style5.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Knotless Braids" />
                            <h6>Knotless Braids | R350
                            </h6>
                        </div>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton4" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style2.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Cut and Braid" />
                            <h6>Cut & Braid | R150
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton5" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style4.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Block Snoopy" />
                            <h6>Block Snoopy | R100
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton6" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style6.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Straight Back" />
                            <h6>Straight Back | R250
                            </h6>
                        </div>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton7" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style9.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Fulani Braids" />
                            <h6>Fulani Braids | R250
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton8" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style7.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Straight Up" />
                            <h6>Straight Up | R300
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton9" runat="server" class="rounded" ImageUrl="~/IMAGES/Hair and Styling/style8.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Ponytail" />
                            <h6>Ponytail | R150
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
