<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="PractitionerDashboard.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-3">
                <div class="container mt-4 bg-secondary-subtle border border-black">
                    <div id="welcomeContainer" class="mt-4" runat="server">
                        <h4>Welcome</h4>
                        <h6>
                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        </h6>
                    </div>
                    <div class="mt-5 mb-5 text-center">
                    </div>
                    <div class="mt-5 mb-5 text-center">
                        <asp:Button ID="btnAcceptedBookings" runat="server" class="rounded-4 form-control border border-secondary" Text="ACCEPTED BOOKINGS" OnClick="btnAcceptedBookings_Click" />
                    </div>
                    <div class="mt-5 mb-5 text-center">
                        <asp:Button ID="btnSignOut" runat="server" class="rounded-4 form-control bg-primary-subtle border border-secondary" Text="Sign Out" OnClick="btnSignOut_Click" />
                    </div>
                </div>
            </div>
            <div class="col-9">
                <div class="row mt-4">
                    <div class="container border border-2 rounded">

                        <div class="container-fluid bg-secondary bg-opacity-50 border">
                            <h5 class="text-center mt-1 mb-2">Request
                            </h5>
                        </div>
                        <div class="row">
                            <div class="mt-2 text-primary">
                                Select ONE Request At A Time and CLICK Accept                            
                            </div>
                            <div class="mt-2 mb-3">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" DataKeyNames="AppointmentID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand" Width="624px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                        <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" SortExpression="AppointmentID" />
                                        <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" SortExpression="ServiceName" />
                                        <asp:BoundField DataField="Client" HeaderText="Client" SortExpression="Client" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                        <asp:TemplateField HeaderText="Accept">
                                            <ItemTemplate>
                                                <asp:Button ID="btnAccept" runat="server" Text="Accept" CommandName="AcceptBooking" CommandArgument='<%# Container.DataItemIndex  %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TotalTranformationConnectionString %>" SelectCommand="SELECT [ServiceName], [Client], [Date], [Time], [AppointmentID] FROM [Appointment]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
