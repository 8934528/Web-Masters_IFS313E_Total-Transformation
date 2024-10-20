<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TotalServices.aspx.cs" Inherits="Web_Masters_IFS313E_Total_Transformation.WebForm15" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-1 mt-3">
                <asp:Button ID="btnBack" CssClass="rounded-3" runat="server" Text="Back" PostBackUrl="~/AdminPage.aspx" OnClick="btnBack_Click" />
            </div>
            <div class="col-5"></div>
            <div class="col-7"></div>
        </div>
        <div class="row mt-3">
            <div class="col-6 mt-2">
                <div class="mb-3">
                    <div class="mt-3">
                        <asp:TextBox ID="txtSevName" runat="server" CssClass="form-control border border-secondary" placeHolder="Service Name"></asp:TextBox>
                    </div>
                    <div class="mt-3">
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control border border-secondary" placeHolder="Price"></asp:TextBox>
                    </div>
                    <div class="row mt-3">
                        <div class="col-4"></div>
                        <div class="col-4">
                            <div class="row">
                                <asp:Button ID="btnSave" runat="server" CssClass="rounded rounded-1 border border-secondary" Text="Save" OnClick="btnSave_Click" />
                            </div>
                        </div>
                        <div class="col-4"></div>
                    </div>
                </div>                                
            </div>

            <div class="col-6 mt-2 text=center">
                <div class="row container-fluid border border-1 rounded">
                    <div class="container-fluid bg-secondary-subtle rounded-bottom mb-2">
                        <h3 class=" text-center mb-3">Services
                        </h3>
                    </div>
                    <div class="mt-2 mb-2 text-center">
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ServicesID" DataSourceID="SqlDataSource1">
                            <AlternatingItemTemplate>
                                <li style="background-color: #FFF8DC;">ServicesID:
                                    <asp:Label ID="ServicesIDLabel" runat="server" Text='<%# Eval("ServicesID") %>' />
                                    <br />
                                    ServicesName:
                                    <asp:Label ID="ServicesNameLabel" runat="server" Text='<%# Eval("ServicesName") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                    <br />
                                </li>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <li style="background-color: #008A8C; color: #FFFFFF;">ServicesID:
                                    <asp:Label ID="ServicesIDLabel1" runat="server" Text='<%# Eval("ServicesID") %>' />
                                    <br />
                                    ServicesName:
                                    <asp:TextBox ID="ServicesNameTextBox" runat="server" Text='<%# Bind("ServicesName") %>' />
                                    <br />
                                    Price:
                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </li>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                No data was returned.
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <li style="">ServicesName:
                                    <asp:TextBox ID="ServicesNameTextBox" runat="server" Text='<%# Bind("ServicesName") %>' />
                                    <br />
                                    Price:
                                    <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </li>
                            </InsertItemTemplate>
                            <ItemSeparatorTemplate>
                                <br />
                            </ItemSeparatorTemplate>
                            <ItemTemplate>
                                <li style="background-color: #DCDCDC; color: #000000;">ServicesID:
                                    <asp:Label ID="ServicesIDLabel" runat="server" Text='<%# Eval("ServicesID") %>' />
                                    <br />
                                    ServicesName:
                                    <asp:Label ID="ServicesNameLabel" runat="server" Text='<%# Eval("ServicesName") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                    <br />
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <li runat="server" id="itemPlaceholder" />
                                </ul>
                                <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">ServicesID:
                                    <asp:Label ID="ServicesIDLabel" runat="server" Text='<%# Eval("ServicesID") %>' />
                                    <br />
                                    ServicesName:
                                    <asp:Label ID="ServicesNameLabel" runat="server" Text='<%# Eval("ServicesName") %>' />
                                    <br />
                                    Price:
                                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                    <br />
                                </li>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TotalTranformationConnectionString %>" DeleteCommand="DELETE FROM [Service] WHERE [ServicesID] = @ServicesID" InsertCommand="INSERT INTO [Service] ([ServicesName], [Price], [uPic]) VALUES (@ServicesName, @Price, @uPic)" SelectCommand="SELECT * FROM [Service]" UpdateCommand="UPDATE [Service] SET [ServicesName] = @ServicesName, [Price] = @Price, [uPic] = @uPic WHERE [ServicesID] = @ServicesID">
                            <DeleteParameters>
                                <asp:Parameter Name="ServicesID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ServicesName" Type="String" />
                                <asp:Parameter Name="Price" Type="Decimal" />
                                <asp:Parameter Name="uPic" Type="Object" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ServicesName" Type="String" />
                                <asp:Parameter Name="Price" Type="Decimal" />
                                <asp:Parameter Name="uPic" Type="Object" />
                                <asp:Parameter Name="ServicesID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
