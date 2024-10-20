<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TotalPractitioner.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm14" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mt-3 text-center">
            <div class="mb-2 text-start">
                <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" />
            </div>
            <div class="container border border-2 rounded">
                <div class="container-fluid bg-secondary bg-opacity-50 border rounded-bottom">
                    <h5 class="text-center mt-1 mb-2">TOTAL PRACTITIONER
                    </h5>
                </div>
                <div class="m-3 m-3">
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server" CssClass="form-control" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PractitionerID" DataSourceID="SqlDataSource1" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="PractitionerID" HeaderText="PractitionerID" InsertVisible="False" ReadOnly="True" SortExpression="PractitionerID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Residence" HeaderText="Residence" SortExpression="Residence" />
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                <asp:BoundField DataField="ServiceOffer" HeaderText="ServiceOffer" SortExpression="ServiceOffer" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TotalTranformationConnectionString %>" DeleteCommand="DELETE FROM [Practitioner] WHERE [PractitionerID] = @PractitionerID" InsertCommand="INSERT INTO [Practitioner] ([Name], [Surname], [Email], [Residence], [Password]) VALUES (@Name, @Surname, @Email, @Residence, @Password)" SelectCommand="SELECT * FROM [Practitioner]" UpdateCommand="UPDATE [Practitioner] SET [Name] = @Name, [Surname] = @Surname, [Email] = @Email, [Residence] = @Residence, [Password] = @Password WHERE [PractitionerID] = @PractitionerID">
                            <DeleteParameters>
                                <asp:Parameter Name="PractitionerID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Surname" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Residence" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Surname" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Residence" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="PractitionerID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>

                <div class="row mt-4">
                    <div class="col-6">
                        <div class="container border border-2 rounded">
                            <div class="container-fluid bg-secondary bg-opacity-50 border rounded-bottom">
                                <h5 class="text-center mt-1 mb-2">HAIR & STYLING
                                </h5>
                            </div>
                            <div>
                                <asp:Label ID="lblHairAndStyle" runat="server" Text=""></asp:Label>
                                <div class="mt-2">
                                    <asp:ListView ID="lvHairAndStyle" runat="server">
                                        <ItemTemplate>
                                            <li><%# Eval("Name") %> <%# Eval("Surname") %></li>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-6">
                        <div class="container border border-2 rounded">
                            <div class="container-fluid bg-secondary bg-opacity-50 border rounded-bottom">
                                <h5 class="text-center mt-1 mb-2">BARBERING
                                </h5>
                            </div>
                            <asp:Label ID="lblBarbering" runat="server" Text=""></asp:Label>
                            <div class="mt-2">
                                <asp:ListView ID="lvBarbering" runat="server">
                                    <ItemTemplate>
                                        <li><%# Eval("Name") %> <%# Eval("Surname") %></li>
                                    </ItemTemplate>
                                </asp:ListView>
                            </div>
                            <div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4 mb-4">
                    <div class="col-6">
                        <div class="container border border-2 rounded">
                            <div class="container-fluid bg-secondary bg-opacity-50 border rounded-bottom">
                                <h5 class="text-center mt-1 mb-2">MAKE-UP
                                </h5>
                            </div>
                            <div>
                                <asp:Label ID="lblMakUp" runat="server" Text=""></asp:Label>
                                <div class="mt-2">
                                    <asp:ListView ID="lvMakUp" runat="server">
                                        <ItemTemplate>
                                            <li><%# Eval("Name") %> <%# Eval("Surname") %></li>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="container border border-2 rounded">
                            <div class="container-fluid bg-secondary bg-opacity-50 border rounded-bottom">
                                <h5 class="text-center mt-1 mb-2">NAILS
                                </h5>
                            </div>
                            <div>
                                <asp:Label ID="lblNails" runat="server" Text=""></asp:Label>
                                <div class="mt-2">
                                    <asp:ListView ID="lvNails" runat="server">
                                        <ItemTemplate>
                                            <li><%# Eval("Name") %> <%# Eval("Surname") %></li>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
