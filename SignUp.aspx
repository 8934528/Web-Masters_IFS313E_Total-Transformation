<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-3"></div>

            <div class="col-6">
                <div class="container mt-5 text-center bg-secondary-subtle rounded-5">
                    <div class="row">

                        <div class="col-1"></div>

                        <div class="col-7 mt-2">
                            <h3>Sign Up</h3>
                            <div class="m-2 mt-1">
                                <asp:TextBox ID="txtName2" runat="server" class="form-control border border-secondary" placeholder="Name" aria-label="Name"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtSurname2" runat="server" class="form-control border border-secondary" placeholder="Surname" aria-label="Surname"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtEmail2" runat="server" class="form-control border border-secondary" placeholder="Email" aria-label="Email" TextMode="Email"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtResidence2" runat="server" class="form-control border border-secondary" placeholder="Residence" aria-label="Residence"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtPassword2" runat="server" type="password" class="form-control border border-secondary" placeholder="Password" aria-label="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:TextBox ID="txtConPassword2" runat="server" type="password" class="form-control border border-secondary" placeholder="Confirm Password" aria-label="Confirm Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="mt-1 mb-2">
                                        <asp:Button ID="btnSignUp2" runat="server" Text="Sign Up" OnClick="btnSignUp2_Click1" />
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="mt-1 mb-2">
                                        <asp:Button ID="btnCancel2" runat="server" Text="Cancel" OnClick="btnCancel2_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 mt-5">
                            <div class="mt-4">
                                Select below*
                            </div>
                            <div>
                                <asp:DropDownList ID="DropDownList1" CssClass="form-control border border-secondary" runat="server">
                                    <asp:ListItem>Client</asp:ListItem>
                                    <asp:ListItem>Practitioner</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</asp:Content>
