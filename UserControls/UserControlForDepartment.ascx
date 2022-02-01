<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControlForDepartment.ascx.cs" Inherits="MedicareHopitalLimite_Iqramul.UserControls.UserControlForDepartment" %>


<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        width: 560px;
    }
    .auto-style4 {
        width: 202px;
    }
    .auto-style5 {
        width: 538px;
    }
    .auto-style6 {
        width: 560px;
        text-align: center;
        font-size: x-large;
    }
</style>


<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <br />
        <table class="auto-style1" style="background-color:azure">
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6"><em><strong>Department Details</strong></em></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>

                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="dgDepartmentInfo" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ObjectDataSourceDep" DataKeyNames="DepartmentID"  GridLines="Vertical" ShowFooter="True" AllowPaging="True" EnableViewState="False" Height="200px" PageSize="5" Width="660px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="DepartmentID" SortExpression="DepartmentID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:LinkButton ID="btnInsert" runat="server" OnClick="btnInsert_Click">Insert</asp:LinkButton>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DepartmentName" SortExpression="DepartmentName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("DepartmentName") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtDepartmentName" runat="server"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="AvailableSeat" SortExpression="AvailableSeat">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AvailableSeat") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("AvailableSeat") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtAvailableSeat" runat="server"></asp:TextBox>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    <asp:ObjectDataSource ID="ObjectDataSourceDep" runat="server" DeleteMethod="DeleteDepartment" InsertMethod="InsertValue" SelectMethod="GetDepartment" TypeName="MedicareHopitalLimite_Iqramul.DAL.Department_DAL" UpdateMethod="UpdateDepartment">
                        <DeleteParameters>
                            <asp:Parameter Name="departmentId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="departmentName" Type="String" />
                            <asp:Parameter Name="availableSeat" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="departmentId" Type="Int32" />
                            <asp:Parameter Name="departmentName" Type="String" />
                            <asp:Parameter Name="availableSeat" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
        
    </ContentTemplate>
</asp:UpdatePanel>



