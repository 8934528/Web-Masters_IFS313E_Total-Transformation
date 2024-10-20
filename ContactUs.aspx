<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 mt-3">
                    <div class="text-center">
                        <h2>Talk To Us</h2>
                    </div>
                </div>
                <div class="offset-lg-3 col-lg-6">
                </div>
            </div>

            <div class="row">
                <div class="col-6 container-fluid text-center rounded-3 bg-secondary-subtle">
                    <h4 class="mt-4">Keep in touch</h4>
                    <div>
                        <div class="mt-5 mb-4">
                            <div>
                                <h5>East London</h5>
                            </div>
                            <div>
                                <address>
                                    50 Church Street<br>
                                    East London CBD<br>
                                    5201<br>
                                    South Africa
                                </address>
                            </div>
                            <div class="mt-5">
                                For General Inquiries: 
        <div class="text-primary">
            +27 (47) 123 4567
        </div>
                                (10AM-5PM Weekdays)
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mt-3 text-center">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/IMAGES/facebook().png" Width="40" />
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/IMAGES/instagram.png" Width="40" />
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/IMAGES/telegram.png" Width="40" />
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/IMAGES/whatsapp.png" Width="40" />
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/IMAGES/twitter.png" Width="40" />
                </div>

                <div class="col-6">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
