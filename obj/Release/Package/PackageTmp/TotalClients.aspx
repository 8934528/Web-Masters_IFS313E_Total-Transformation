<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TotalClients.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm13" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mt-3 text-center">
            <div class="mb-2 text-start">
                <asp:Button ID="btnBank" runat="server" Text="Back" OnClick="btnBank_Click" />
            </div>
            <div class="container border border-2 rounded">
                <div class="container-fluid bg-secondary bg-opacity-50 border  rounded-bottom">
                    <h5 class="text-center mt-1 mb-2">TOTAL CLIENTS 
                    </h5>
                </div>
                <div class="m-3 m-3">
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server" CssClass="form-control" AutoGenerateColumns="False" DataKeyNames="ClientID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:BoundField DataField="ClientID" HeaderText="ClientID" InsertVisible="False" ReadOnly="True" SortExpression="ClientID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Residence" HeaderText="Residence" SortExpression="Residence" />
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TotalTranformationConnectionString %>" DeleteCommand="DELETE FROM [Client] WHERE [ClientID] = @ClientID" InsertCommand="INSERT INTO [Client] ([Name], [Surname], [Email], [Residence], [Password]) VALUES (@Name, @Surname, @Email, @Residence, @Password)" SelectCommand="SELECT * FROM [Client]" UpdateCommand="UPDATE [Client] SET [Name] = @Name, [Surname] = @Surname, [Email] = @Email, [Residence] = @Residence, [Password] = @Password WHERE [ClientID] = @ClientID">
                            <DeleteParameters>
                                <asp:Parameter Name="ClientID" Type="Int32" />
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
                                <asp:Parameter Name="ClientID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
