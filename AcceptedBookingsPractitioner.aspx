<%@ Page Title="" Language="C#" MasterPageFile="~/ClientDashboard.Master" AutoEventWireup="true" CodeBehind="AcceptedBookingsPractitioner.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm19" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mt-3 text-center">
            <div class="mb-2 text-start">
                <asp:Button ID="btnHome" runat="server" Text="Home" OnClick="btnHome_Click" />
            </div>
            <div class="container border border-2 rounded">
                <div class="container-fluid bg-secondary bg-opacity-50 border">
                    <h5 class="text-center mt-1 mb-2">Accepted 
                    </h5>
                </div>
                <div class="m-3 m-3">
                    <div class="row">
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <li style="background-color: #FFF8DC;">AppointmentID:
                                    <asp:Label ID="AppointmentIDLabel" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                    <br />
                                    ServiceName:
                                    <asp:Label ID="ServiceNameLabel" runat="server" Text='<%# Eval("ServiceName") %>' />
                                    <br />
                                    Client:
                                    <asp:Label ID="ClientLabel" runat="server" Text='<%# Eval("Client") %>' />
                                    <br />
                                    Date:
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                    <br />
                                    Time:
                                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                                    <br />
                                    Practitioner:
                                    <asp:Label ID="PractitionerLabel" runat="server" Text='<%# Eval("Practitioner") %>' />
                                    <br />
                                </li>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <li style="background-color: #008A8C;color: #FFFFFF;">AppointmentID:
                                    <asp:Label ID="AppointmentIDLabel1" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                    <br />
                                    ServiceName:
                                    <asp:TextBox ID="ServiceNameTextBox" runat="server" Text='<%# Bind("ServiceName") %>' />
                                    <br />
                                    Client:
                                    <asp:TextBox ID="ClientTextBox" runat="server" Text='<%# Bind("Client") %>' />
                                    <br />
                                    Date:
                                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                    <br />
                                    Time:
                                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                                    <br />
                                    Practitioner:
                                    <asp:TextBox ID="PractitionerTextBox" runat="server" Text='<%# Bind("Practitioner") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </li>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                No data was returned.
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <li style="">AppointmentID:
                                    <asp:TextBox ID="AppointmentIDTextBox" runat="server" Text='<%# Bind("AppointmentID") %>' />
                                    <br />ServiceName:
                                    <asp:TextBox ID="ServiceNameTextBox" runat="server" Text='<%# Bind("ServiceName") %>' />
                                    <br />Client:
                                    <asp:TextBox ID="ClientTextBox" runat="server" Text='<%# Bind("Client") %>' />
                                    <br />Date:
                                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                    <br />Time:
                                    <asp:TextBox ID="TimeTextBox" runat="server" Text='<%# Bind("Time") %>' />
                                    <br />Practitioner:
                                    <asp:TextBox ID="PractitionerTextBox" runat="server" Text='<%# Bind("Practitioner") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </li>
                            </InsertItemTemplate>
                            <ItemSeparatorTemplate>
<br />
                            </ItemSeparatorTemplate>
                            <ItemTemplate>
                                <li style="background-color: #DCDCDC;color: #000000;">AppointmentID:
                                    <asp:Label ID="AppointmentIDLabel" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                    <br />
                                    ServiceName:
                                    <asp:Label ID="ServiceNameLabel" runat="server" Text='<%# Eval("ServiceName") %>' />
                                    <br />
                                    Client:
                                    <asp:Label ID="ClientLabel" runat="server" Text='<%# Eval("Client") %>' />
                                    <br />
                                    Date:
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                    <br />
                                    Time:
                                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                                    <br />
                                    Practitioner:
                                    <asp:Label ID="PractitionerLabel" runat="server" Text='<%# Eval("Practitioner") %>' />
                                    <br />
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <li runat="server" id="itemPlaceholder" />
                                </ul>
                                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">AppointmentID:
                                    <asp:Label ID="AppointmentIDLabel" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                    <br />
                                    ServiceName:
                                    <asp:Label ID="ServiceNameLabel" runat="server" Text='<%# Eval("ServiceName") %>' />
                                    <br />
                                    Client:
                                    <asp:Label ID="ClientLabel" runat="server" Text='<%# Eval("Client") %>' />
                                    <br />
                                    Date:
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                    <br />
                                    Time:
                                    <asp:Label ID="TimeLabel" runat="server" Text='<%# Eval("Time") %>' />
                                    <br />
                                    Practitioner:
                                    <asp:Label ID="PractitionerLabel" runat="server" Text='<%# Eval("Practitioner") %>' />
                                    <br />
                                </li>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TotalTranformationConnectionString %>" DeleteCommand="DELETE FROM [Booking] WHERE [AppointmentID] = @AppointmentID" InsertCommand="INSERT INTO [Booking] ([AppointmentID], [ServiceName], [Client], [Date], [Time], [Practitioner]) VALUES (@AppointmentID, @ServiceName, @Client, @Date, @Time, @Practitioner)" SelectCommand="SELECT * FROM [Booking] WHERE ([Practitioner] = @Practitioner)" UpdateCommand="UPDATE [Booking] SET [ServiceName] = @ServiceName, [Client] = @Client, [Date] = @Date, [Time] = @Time, [Practitioner] = @Practitioner WHERE [AppointmentID] = @AppointmentID">
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
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="" Name="Practitioner" SessionField="USER" Type="String" />
                            </SelectParameters>
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

                <div class="mt-3 text-center"></div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
