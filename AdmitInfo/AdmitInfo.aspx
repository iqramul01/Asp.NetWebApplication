<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdmitInfo.aspx.cs" Inherits="MedicareHopitalLimite_Iqramul.Patient.AdmitInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <table class="nav-justified" style="background-color:lightcyan; width: 100%;">
            <tr>
                <td style="font-size: x-large; color: #0033CC;" class="text-center" colspan="3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="font-size: x-large; color: #0033CC;" class="text-center" colspan="3"><strong><em>Admit Information</em></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">&nbsp;</td>
                <td>
                    <asp:TextBox ID="txtAdmitID" runat="server" Visible="False" Width="190px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">
                    <asp:Label ID="lblAdmitDate" runat="server" Text="Admit Date"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAdmitDate" runat="server" TextMode="Date" Height="27px" Width="189px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">
                    <asp:Label ID="lblAdmitFee" runat="server" Text="Admit Fee"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAdmitFee" runat="server" Height="25px" Width="190px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">
                    <asp:Label ID="lblPatientID" runat="server" Text="Patient ID"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlPatientID" runat="server" DataSourceID="SqlDataSource1" DataTextField="PatientID" DataValueField="PatientID" Height="27px" Width="159px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Patient]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px; width: 268px;"></td>
                <td style="height: 20px; width: 262px;">
                    <asp:Label ID="lblTotalBill" runat="server" Text="Total Bill" Visible="False"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtTotalBill" runat="server" Visible="False" Height="27px" Width="190px"></asp:TextBox>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">
                    <asp:Label ID="lblReleaseDate" runat="server" Text="Release Date" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtReleaseDate" runat="server" TextMode="Date" Visible="False" style="margin-left: 0" Height="27px" Width="186px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px; width: 268px;"></td>
                <td style="height: 20px; width: 262px;">
                    </td>
                <td style="height: 20px">
                    </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnAdmit" runat="server" OnClick="btnAdmit_Click" Text="Admit" />
                    
                    <asp:Button ID="btnUpdateAdmit" runat="server" OnClick="btnUpdateAdmit_Click" Text="Update" />
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td style="width: 262px">
                    &nbsp;</td>
                <td>
                    
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblAdmitMessage" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 268px; height: 17px;"></td>
                <td colspan="2" style="height: 17px">
                    &nbsp;</td>
                <td style="height: 17px"></td>
            </tr>
            <tr>
                <td style="width: 268px">&nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GridViewAdmit" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="AdmitID" DataSourceID="SqlDataSourceAdmit" OnSelectedIndexChanged="GridViewAdmit_SelectedIndexChanged" EnableViewState="False" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="margin-left: 200px" Width="637px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="AdmitID" HeaderText="AdmitID" InsertVisible="False" ReadOnly="True" SortExpression="AdmitID" />
                            <asp:BoundField DataField="AdmitDate" HeaderText="AdmitDate" SortExpression="AdmitDate" />
                            <asp:BoundField DataField="AdmitFee" HeaderText="AdmitFee" SortExpression="AdmitFee" />
                            <asp:BoundField DataField="PatientID" HeaderText="PatientID" SortExpression="PatientID" />
                            <asp:BoundField DataField="TotalBill" HeaderText="TotalBill" SortExpression="TotalBill" />
                            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceAdmit" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Admit]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Content>
