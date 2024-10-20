<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm16" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-2">
                <div class="row">
                    <div class="col-10 text-start">
                        <asp:Button ID="btnHome" runat="server" Text="Home" CssClass="rounded-3" OnClick="btnHome_Click" />
                    </div>
                    <div class="col-2">
                    </div>
                </div>
            </div>
            <div class="col-8">
                <div class="container mt-5 text-center bg-secondary-subtle rounded-5">
                    <div class="row bg-primary-subtle  rounded-top-5">
                        <div>
                            <div class=" mt-2">
                                <h3>Payment Process
                                </h3>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-3"></div>
                        <div class="col-6">
                            <div class="mt-2 text-start">
                                <h6>Service Name:
                                    <asp:Label ID="lblServiceName" runat="server" Text=""></asp:Label></h6>
                            </div>
                            <div class="mt-3 text-start">
                                <h6>Email:
                                    <asp:TextBox ID="txtEmailAddress" CssClass="form-control border border-secondary" ReadOnly="true" runat="server"></asp:TextBox></h6>
                            </div>
                            <div class="mt-3 text-start">
                                <h6>Date:
                                    <asp:Label ID="lblDate" runat="server" Text=""></asp:Label></h6>
                            </div>
                            <div class="mt-3 text-start">
                                <h6>Time:
                                    <asp:Label ID="lblTime" runat="server" Text=""></asp:Label></h6>
                            </div>
                            <div class="mt-3">
                                <asp:TextBox ID="txtBankName" CssClass="form-control border border-secondary" placeHolder="Bank Name" runat="server"></asp:TextBox>
                            </div>
                            <div class="mt-3">
                                <asp:TextBox ID="txtAccountHolder" CssClass="form-control border border-secondary" placeHolder="Account Holder" runat="server"></asp:TextBox>
                            </div>
                            <div class="mt-3 mb-3">
                                <asp:TextBox ID="txtCardNumber" CssClass="form-control border border-secondary" placeHolder="Card Number" runat="server"></asp:TextBox>
                            </div>
                            <div class="mt-3 mb-3">
                                <asp:TextBox ID="txtcvv" CssClass="form-control border border-secondary" placeHolder="cvv" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-3"></div>
                    </div>
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-4 mt-4 mb-4">
                            <div class="row">
                                <asp:Button ID="btnPay" CssClass="rounded-3 btn btn-primary" runat="server" Text="Pay" OnClick="btnPay_Click" />
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
