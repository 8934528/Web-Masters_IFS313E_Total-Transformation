<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="Bookings.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-2">
                <div class="mt-2">
                    <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="rounded-3" OnClick="btnHome_Click" />
                </div>
            </div>

            <div class="col-8">
                <div class="container mt-5 text-center bg-secondary-subtle rounded-5">
                    <div class="row mt-3">
                        <div class="col-6">
                            <div class="mt-2">
                                <asp:Image ID="imgService" runat="server" CssClass="rounded" Height="300" Width="300" />
                            </div>
                        </div>

                        <div class="col-6">
                            <div class="mt-3 text-start">
                                <h6>Service Name:
                                    <asp:Label ID="lblServiceName" runat="server" Text=""></asp:Label></h6>
                            </div>
                            <div class="mt-3">
                                <asp:TextBox ID="txtEmailAddress" CssClass="form-control border border-secondary" placeHolder="Email Address" aria-label="Email Address" ReadOnly="true" runat="server"></asp:TextBox>
                            </div>
                            <div class="mt-3">
                                <label for="booking-date">Select Date: </label>
                                <input class="form-control border border-secondary" type="date" id="booking-date" name="booking-date" />
                            </div>
                            <div class="mt-3 mb-3">
                                <label for="booking-time">Select Time: </label>
                                <input class="form-control border border-secondary" type="time" id="booking-time" name="booking-time" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-4 mt-4 mb-4">
                            <div class="row">
                                <asp:Button ID="btnBook" CssClass="rounded-3 border border-secondary" runat="server" Text="Book" OnClick="btnBook_Click" />
                            </div>
                        </div>
                        <div class="col-4"></div>
                    </div>
                </div>
            </div>
            <div class="col-2"></div>
        </div>
    </div>
</asp:Content>
