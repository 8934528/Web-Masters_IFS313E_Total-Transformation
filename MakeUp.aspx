<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="MakeUp.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-2 mt-2">
                    <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="rounded-3" OnClick="btnBack_Click" />
                </div>
                <div class="col-10 text-center mt-3">
                    <h3>A Good Day Begins With Perfect Make-Up
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
                            <asp:ImageButton ID="ImageButton1" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make2.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Glamorous Look" />
                            <h6>Glamorous Look | R250
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton2" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make4.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Natural Glam" />
                            <h6>Natural Glam | R220
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton3" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make6.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Full Facebeat" />
                            <h6>Full Facebeat | R300
                            </h6>
                        </div>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton4" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make8.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Boho Look" />
                            <h6>Boho Look | R280
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton5" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make9.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Bridal Look" />
                            <h6>Bridal Look | R160
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton6" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make7.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Bold Look" />
                            <h6>Bold Look | R190
                            </h6>
                        </div>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton7" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make5.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Soft Glam" />
                            <h6>Soft Glam | R150
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton8" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make3.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Full Glam" />
                            <h6>Full Glam | R320
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton9" runat="server" class="rounded" ImageUrl="~/IMAGES/MakeUp/make1.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Vintage Look" />
                            <h6>Vintage Look | R200
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
