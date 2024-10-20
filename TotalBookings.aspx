<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TotalBookings.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm22" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mt-3 text-center">
            <div class="mb-2 text-start">
                <asp:Button ID="btnBank" runat="server" Text="Back" OnClick="btnBank_Click" />
            </div>
            <div class="container border border-2 rounded">
                <div class="container-fluid bg-secondary bg-opacity-50 border rounded-bottom">
                    <h5 class="text-center mt-1 mb-2">TOTAL BOOKINGS 
                    </h5>
                </div>
                <div class="m-3 m-3">
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="form-control" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" SortExpression="AppointmentID" />
                                <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" SortExpression="ServiceName" />
                                <asp:BoundField DataField="Client" HeaderText="Client" SortExpression="Client" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                                <asp:BoundField DataField="Practitioner" HeaderText="Practitioner" SortExpression="Practitioner" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TotalTranformationConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [AppointmentID] = @AppointmentID" InsertCommand="INSERT INTO [Booking] ([AppointmentID], [ServiceName], [Client], [Date], [Time], [Practitioner]) VALUES (@AppointmentID, @ServiceName, @Client, @Date, @Time, @Practitioner)" SelectCommand="SELECT * FROM [Booking]" UpdateCommand="UPDATE [Booking] SET [ServiceName] = @ServiceName, [Client] = @Client, [Date] = @Date, [Time] = @Time, [Practitioner] = @Practitioner WHERE [AppointmentID] = @AppointmentID">
                            <DeleteParameters>
                                <asp:Parameter Name="AppointmentID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="AppointmentID" Type="Int32" />
                                <asp:Parameter Name="ServiceName" Type="String" />
                                <asp:Parameter Name="Client" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter DbType="Time" Name="Time" />
                                <asp:Parameter Name="Practitioner" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ServiceName" Type="String" />
                                <asp:Parameter Name="Client" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                                <asp:Parameter DbType="Time" Name="Time" />
                                <asp:Parameter Name="Practitioner" Type="String" />
                                <asp:Parameter Name="AppointmentID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
