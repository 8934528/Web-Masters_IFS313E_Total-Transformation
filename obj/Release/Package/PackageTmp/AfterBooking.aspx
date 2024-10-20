<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="AfterBooking.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm21" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <div class="mt-2 mb-2">
            <h3>Thank You For Booking
            </h3>
            <p>
                Your Appointment is Pending
            </p>
            <div class="text-center">
                <video src="IMAGES/Barbering/Pending.mp4"  autoplay="autoplay" loop="loop" muted="muted" width="280"  />
               
            </div>
            <h5>
                Please Wait for Your Appoitment To Be Approved And Make Payment
            </h5>
        </div>
        <div>
            <asp:Button ID="btnOkay" runat="server" Text="Done" CssClass="rounded-4 border border-secondary" OnClick="btnOkay_Click" Height="50px" Width="110px" />
        </div>
    </div>
</asp:Content>
