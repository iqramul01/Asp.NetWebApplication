<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DepartmentInfo.aspx.cs" Inherits="MedicareHopitalLimite_Iqramul.Department.DepartmentInfo" %>

<%@ Register Src="~/UserControls/UserControlForDepartment.ascx" TagPrefix="uc1" TagName="UserControlForDepartment" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UserControlForDepartment runat="server" id="UserControlForDepartment" />

    <asp:UpdatePanel ID="UpdatePanel02" runat="server">
        <ContentTemplate>
            <div>

               <table class="nav-justified" style="background-color:azure">
                   
            <tr>
                <td style="width: 204px" class="auto-style4">&nbsp;</td>
                <td style="width: 487px; font-size: x-large; text-align: center;" class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
                   <tr>
                       <td class="auto-style4" style="width: 204px">&nbsp;</td>
                       <td class="auto-style5" style="width: 487px; font-size: x-large; text-align: center;">&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style4" style="width: 204px">&nbsp;</td>
                       <td class="auto-style5" style="width: 487px; font-size: x-large; text-align: center;"><strong><em>Appointment Details</em></strong></td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style4" style="width: 204px">&nbsp;</td>
                       <td class="auto-style5" style="width: 487px">&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
            <tr>
                <td style="width: 204px" class="auto-style4">&nbsp;</td>
                <td style="width: 487px" class="auto-style5">
                    <asp:ListView ID="lstViewAppointmentInformation" runat="server" DataKeyNames="AppointmentID" DataSourceID="SqlDataSourceAppInfo" EnableViewState="False" style="width: 510px">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Label ID="AppointmentIDLabel" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DoctorIDLabel" runat="server" Text='<%# Eval("DoctorID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                </td>
                                <td>
                                    <asp:Label ID="AppointmentIDLabel1" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DoctorIDTextBox" runat="server" Text='<%# Bind("DoctorID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DoctorIDTextBox" runat="server" Text='<%# Bind("DoctorID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DateTextBox" runat="server" Text='<%# Bind("Date") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Label ID="AppointmentIDLabel" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DoctorIDLabel" runat="server" Text='<%# Eval("DoctorID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                                <th runat="server"><asp:LinkButton ID="btnAppointmentID" runat="server" CommandName="Sort">AppointmentID</asp:LinkButton> </th>
                                                <th runat="server">ApplicantName</th>
                                                <th runat="server">Email</th>
                                                <th runat="server">DoctorID</th>
                                                <th runat="server"><asp:LinkButton ID="btnAppointmentDate" runat="server" CommandName="Sort">AppointmentDate</asp:LinkButton> </th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                                </tr>
                                
                            </table>
                            <div style="text-align:center;background-color:blueviolet;">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="5" >
                                       <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                </asp:DataPager>
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Label ID="AppointmentIDLabel" runat="server" Text='<%# Eval("AppointmentID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DoctorIDLabel" runat="server" Text='<%# Eval("DoctorID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DateLabel" runat="server" Text='<%# Eval("Date") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSourceAppInfo" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Appointment]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 204px" class="auto-style4">&nbsp;</td>
                <td style="width: 487px" class="auto-style5">
                    
                </td>
                <td>&nbsp;</td>
            </tr>
                   <tr>
                       <td class="auto-style4" style="width: 204px">&nbsp;</td>
                       <td class="auto-style5" style="width: 487px">&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td class="auto-style4" style="width: 204px">&nbsp;</td>
                       <td class="auto-style5" style="width: 487px">&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
        </table>

        <table class="nav-justified" style="background-color:azure">
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td class="text-center" style="width: 1072px; font-size: x-large"><strong><em>Patient Details</em></strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 75px">&nbsp;</td>
                <td style="width: 1072px">
                    <asp:GridView ID="gvPatientInfo" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="PatientID" DataSourceID="SqlDataSource1" EnableViewState="False" GridLines="Horizontal" style="margin-left: 0px" Width="981px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <%--<asp:BoundField DataField="Diseases" HeaderText="Diseases" SortExpression="Diseases" />--%>
                            <asp:TemplateField HeaderText="PatientID" InsertVisible="False" SortExpression="PatientID">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("PatientID") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PatientID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PatientName" SortExpression="PatientName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PatientName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("PatientName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="BloodGroup" SortExpression="BloodGroup">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("BloodGroup") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("BloodGroup") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="EmergencyContact" SortExpression="EmergencyContact">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("EmergencyContact") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("EmergencyContact") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="DepartmentID" SortExpression="DepartmentID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("DepartmentID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Country" SortExpression="Country">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Division" SortExpression="Division">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Division") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Division") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="District" SortExpression="District">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("District") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("District") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PatientStatus" SortExpression="PatientStatus">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("PatientStatus") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("PatientStatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [Patient] WHERE [PatientID] = @PatientID" InsertCommand="INSERT INTO [Patient] ([PatientName], [Gender], [BloodGroup], [EmergencyContact], [DepartmentID], [Country], [Division], [District], [Diseases], [PatientStatus]) VALUES (@PatientName, @Gender, @BloodGroup, @EmergencyContact, @DepartmentID, @Country, @Division, @District, @Diseases, @PatientStatus)" SelectCommand="SELECT * FROM [Patient]" UpdateCommand="UPDATE [Patient] SET [PatientName] = @PatientName, [Gender] = @Gender, [BloodGroup] = @BloodGroup, [EmergencyContact] = @EmergencyContact, [DepartmentID] = @DepartmentID, [Country] = @Country, [Division] = @Division, [District] = @District, [Diseases] = @Diseases, [PatientStatus] = @PatientStatus WHERE [PatientID] = @PatientID">
                        <DeleteParameters>
                            <asp:Parameter Name="PatientID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="PatientName" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="BloodGroup" Type="String" />
                            <asp:Parameter Name="EmergencyContact" Type="String" />
                            <asp:Parameter Name="DepartmentID" Type="Int32" />
                            <asp:Parameter Name="Country" Type="String" />
                            <asp:Parameter Name="Division" Type="String" />
                            <asp:Parameter Name="District" Type="String" />
                            <asp:Parameter Name="Diseases" Type="String" />
                            <asp:Parameter Name="PatientStatus" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="PatientName" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="BloodGroup" Type="String" />
                            <asp:Parameter Name="EmergencyContact" Type="String" />
                            <asp:Parameter Name="DepartmentID" Type="Int32" />
                            <asp:Parameter Name="Country" Type="String" />
                            <asp:Parameter Name="Division" Type="String" />
                            <asp:Parameter Name="District" Type="String" />
                            <asp:Parameter Name="Diseases" Type="String" />
                            <asp:Parameter Name="PatientStatus" Type="String" />
                            <asp:Parameter Name="PatientID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <strong><em><span style="font-size: x-large">Department Information</span></em></strong>
                    <br />
                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="DepartmentID" DataSourceID="SqlDataSourceDep" GridLines="Horizontal" Height="195px" style="margin-top: 0px" Width="245px">
                        <EditItemTemplate>
                            DepartmentID:
                            <asp:Label ID="DepartmentIDLabel1" runat="server" Text='<%# Eval("DepartmentID") %>' />
                            <br />
                            DepartmentName:
                            <asp:TextBox ID="DepartmentNameTextBox" runat="server" Text='<%# Bind("DepartmentName") %>' />
                            <br />
                            AvailableSeat:
                            <asp:TextBox ID="AvailableSeatTextBox" runat="server" Text='<%# Bind("AvailableSeat") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            DepartmentName:
                            <asp:TextBox ID="DepartmentNameTextBox0" runat="server" Text='<%# Bind("DepartmentName") %>' />
                            <br />
                            AvailableSeat:
                            <asp:TextBox ID="AvailableSeatTextBox0" runat="server" Text='<%# Bind("AvailableSeat") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            DepartmentID:
                            <asp:Label ID="DepartmentIDLabel" runat="server" Text='<%# Eval("DepartmentID") %>' />
                            <br />
                            DepartmentName:
                            <asp:Label ID="DepartmentNameLabel" runat="server" Text='<%# Bind("DepartmentName") %>' />
                            <br />
                            AvailableSeat:
                            <asp:Label ID="AvailableSeatLabel" runat="server" Text='<%# Bind("AvailableSeat") %>' />
                            <br />
                        </ItemTemplate>
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSourceDep" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
 


    </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    
    
</asp:Content>
