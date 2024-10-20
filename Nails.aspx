<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="Nails.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.Nails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-2 mt-2">
                    <asp:Button ID="btnBack1" runat="server" Text="Back" CssClass="rounded-3" OnClick="btnBack1_Click" />
                </div>
                <div class="col-10 text-center mt-3">
                    <h3>Nails That Speaks Volumes
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
                            <asp:ImageButton ID="ImageButton1" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail1.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Box Nails" />
                            <h6>Box Nails | R250
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton2" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail2.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Coffin Nails" />
                            <h6>Coffin Nails | R200
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton3" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail3.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=French Nails" />
                            <h6>French Nails | R150
                            </h6>
                        </div>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton4" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail4.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=White Pedicure" />
                            <h6>White Pedicure | R100
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton5" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail5.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Pink Pedicure" />
                            <h6>Pink Pedicure | R150
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton6" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail7.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Stiletto Nails" />
                            <h6>Stilleto Nails | R300
                            </h6>
                        </div>
                    </div>
                    <div class="row mt-3 text-center">
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton7" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail8.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Plain Acrylic Nails" />
                            <h6>Plain Acrylic Nails | R200
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton8" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail9.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Gel Overlay Nails" />
                            <h6>Gel Overlay Nails | R80
                            </h6>
                        </div>
                        <div class="col-4">
                            <asp:ImageButton ID="ImageButton9" runat="server" class="rounded" ImageUrl="~/IMAGES/Nails/Nail10.jpg" Height="300" Width="300" PostBackUrl="~/Bookings.aspx?service=Clear Gel Nails" />
                            <h6>Clear Gel Nails | R50
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
