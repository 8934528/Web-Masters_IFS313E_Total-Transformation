<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm23" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-3">
                <asp:Button ID="btnBack" runat="server" CssClass="rounded rounded-2" Text="Back" OnClick="btnBack_Click" />
            </div>

            <div class="col-6">
                <div class="container mt-5 text-center bg-secondary-subtle rounded-5">
                    <div class="row">

                        <div class="col-1"></div>

                        <div class="col-7 mt-2">
                            <h3>Practitioner Profile</h3>
                            <div class="m-2 mt-1">
                                <asp:TextBox ID="txtName" runat="server" class="form-control border border-secondary" placeholder="Name" aria-label="Name" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtSurname" runat="server" class="form-control border border-secondary" placeholder="Surname" aria-label="Surname" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtEmail" runat="server" class="form-control border border-secondary" placeholder="Email" aria-label="Email" TextMode="Email" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtResidence" runat="server" class="form-control border border-secondary" placeholder="Residence" aria-label="Residence" ReadOnly="True"></asp:TextBox>
                            </div>
                            <div class="mt-2 text-danger">
                                    Select the Service You Provide Below: 
                            </div>
                            <div class="mt-2">
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control border border-secondary" runat="server">
                                    <asp:ListItem>Hair &amp; Styling</asp:ListItem>
                                    <asp:ListItem>Barbering</asp:ListItem>
                                    <asp:ListItem>Make-Up</asp:ListItem>
                                    <asp:ListItem>Nails</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="row">
                                <div class="text-center">
                                    <div class="mt-2 mb-2">

                                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 mt-5">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</asp:Content>
