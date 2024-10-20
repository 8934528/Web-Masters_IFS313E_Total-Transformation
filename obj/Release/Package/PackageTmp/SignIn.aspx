<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4">
        <div class="row">
            <div class="col-3"></div>

            <div class="col-6">
                <div class="container mt-5 text-center bg-secondary-subtle rounded-5">
                    <div class="row">

                        <div class="col-2">
                        </div>

                        <div class="col-8 mt-3">
                            <h3>Sign In</h3>
                            <div>
                                <img src="IMAGES/User%20Icon.png" style="width: 90px; height: 90px;" />
                            </div>
                            <div class="m-3">
                                <asp:TextBox ID="txtEmail1" runat="server" class="form-control border border-secondary" placeholder="Email" aria-label="Email"></asp:TextBox>
                            </div>
                            <div class="m-3">
                                <asp:TextBox ID="txtPassword1" type="password" runat="server" class="form-control border border-secondary" placeholder="Password" aria-label="Password"></asp:TextBox>
                            </div>
                            <div class="m-2">
                                <asp:Button ID="btnSignIn1" runat="server" Text="Sign In" OnClick="btnSignIn1_Click" />
                            </div>
                            <div class="mt-3 mb-4">
                                <asp:Label ID="lblAccount1" runat="server" Text="Don't have an account? "></asp:Label>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign Up</asp:HyperLink>
                            </div>
                            <div class="mt-2">
                                <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="col-2">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-3">
        </div>
    </div>
</asp:Content>
