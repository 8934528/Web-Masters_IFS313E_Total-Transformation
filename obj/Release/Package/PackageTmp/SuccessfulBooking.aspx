<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="SuccessfulBooking.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm17" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="mt-2 text-center">
            <h2>Payment Successful!!
            </h2>
        </div>
        <div class="text-center">
            <video src="IMAGES/gif.mp4" autoplay="autoplay" loop="loop" muted="muted" width="350" />
        </div>
        <div class="row m-3">
            <div class="col-5"></div>

            <div class="col-2">
                <div class="text-center">
                    <asp:Button ID="btnOkay" CssClass=" rounded-3 form-control border border-secondary" runat="server" Text="Done" OnClick="btnOkay_Click" />
                </div>

                <div class="col-5"></div>
            </div>
        </div>
    </div>
</asp:Content>
