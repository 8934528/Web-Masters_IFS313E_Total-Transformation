<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="ViewBookingsClient.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm18" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mt-3 text-center">
            <div class="text-start">
                <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
            </div>
            <div class="container border border-2 rounded">
                <div class="container-fluid bg-secondary bg-opacity-50 border">
                    <h5 class="text-center mt-1 mb-2">Pending 
                    </h5>
                </div>
                <div class="m-3 m-3">
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" InsertVisible="False" ReadOnly="True" SortExpression="AppointmentID" />
                                <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" SortExpression="ServiceName" />
                                <asp:BoundField DataField="Client" HeaderText="Client" SortExpression="Client" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TotalTranformationConnectionString %>" SelectCommand="SELECT * FROM [Appointment] WHERE ([Client] = @Client)">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="" Name="Client" SessionField="USER" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
