<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm10" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="mt-2">
            <asp:Label ID="Labelcounter" runat="server" Text=""></asp:Label>
            </div>            
        <div class="col-2 mt-2">
            <asp:Button ID="btnSignOut" runat="server" Text="SignOut" CssClass="rounded-3" OnClick="btnSignOut_Click" />
        </div>
        <div class="row mt-4">
            <div class="col-6">
                <div class="container bg-primary-subtle rounded">
                    <div class="mt-2">
                        <h2>
                            <asp:Literal ID="ltTotalClients" runat="server"></asp:Literal></h2>
                    </div>
                    <div class="row">
                        <div class="col-6 mt-3">
                            <h5>Total Clients
                            </h5>
                        </div>
                        <div class="col-6 text-center">
                            <img src="IMAGES/icon/Clients.png" width="110" />
                        </div>
                        <div>
                            <asp:Button ID="btnMoreInfoClients" CssClass="form-control bg-primary" runat="server" Text="More Info" PostBackUrl="~/TotalClients.aspx" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="container bg-warning-subtle rounded">
                    <div class="mt-2">
                        <h2>
                            <asp:Literal ID="ltTotalPractitioner" runat="server"></asp:Literal></h2>
                    </div>
                    <div class="row">
                        <div class="col-6 mt-3">
                            <h5>Total Practitioners
                            </h5>
                        </div>
                        <div class="col-6 text-center">
                            <img src="IMAGES/icon/Practitioners.png" width="110" />
                        </div>
                        <div>
                            <asp:Button ID="btnAdPractitioner" CssClass="form-control bg-warning" runat="server" Text="More Info" PostBackUrl="~/TotalPractitioner.aspx" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-6">
                <div class="container bg-danger-subtle rounded">
                    <div class="mt-2">
                        <h2>
                            <asp:Literal ID="ltTotalService" runat="server"></asp:Literal></h2>
                    </div>
                    <div class="row">
                        <div class="col-6 mt-3">
                            <h5>Total Services
                            </h5>
                        </div>
                        <div class="col-6 text-center mb-2">
                            <img src="IMAGES/icon/Services.png" width="110" />
                        </div>
                        <div>
                            <asp:Button ID="btnAdServices" CssClass="form-control bg-danger" runat="server" Text="More Info" PostBackUrl="~/TotalServices.aspx" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6">
                <div class="container bg-success-subtle rounded">
                    <div class="mt-2">
                        <h2>
                            <asp:Label ID="lblBooking" runat="server" Text=""></asp:Label>
                        </h2>
                    </div>
                    <div class="row">
                        <div class="col-6 mt-3">
                            <h5>Total Bookings
                            </h5>
                        </div>
                        <div class="col-6 text-center mb-2">
                            <img src="IMAGES/icon/bookings.png" width="110" />
                        </div>
                        <div>
                            <asp:Button ID="btnAdBookings" CssClass="form-control bg-success" runat="server" Text="More Info" OnClick="btnAdBookings_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
