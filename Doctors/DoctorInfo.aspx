<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DoctorInfo.aspx.cs" Inherits="MedicareHopitalLimite_Iqramul.Doctors.DoctorInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="auto-style1" style="width: 1122px; height: 616px; margin-left:100px; margin-top: 10px; border:double; background-color:beige">
            <caption class="text-center" style="font-size: x-large">
                </caption>
            <tr>
                <td style="height: 34px; background-color:darkkhaki; font-size: xx-large;" class="text-center" colspan="7">&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 34px; background-color:darkkhaki; font-size: xx-large;" class="text-center" colspan="7"><em>Doctor&#39;s Information</em></td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 18px;" class="modal-sm"></td>
                <td style="width: 356px; height: 18px;" class="modal-sm"></td>
                <td class="auto-style3" style="width: 279px; height: 18px;">
                    </td>
                <td style="width: 187px; height: 18px;">
                    </td>
                <td style="width: 172px; height: 18px;">
                    </td>
                <td style="width: 236px; height: 18px;">
                    </td>
                <td style="width: 237px; height: 18px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 36px;" class="modal-sm"></td>
                <td style="width: 356px; height: 36px;" class="modal-sm">Doctor Name</td>
                <td class="auto-style3" style="width: 279px; height: 36px;">
                    <asp:TextBox ID="txtDoctorName" runat="server" ToolTip="Please Enter Name"></asp:TextBox>
                </td>
                <td style="width: 187px; height: 36px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDoctorName" runat="server" ControlToValidate="txtDoctorName" ErrorMessage="Name is Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 172px; height: 36px;">
                    </td>
                <td style="width: 236px; height: 36px;">
                    </td>
                <td style="width: 237px; height: 36px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 35px;" class="modal-sm"></td>
                <td style="width: 356px; height: 35px;" class="modal-sm">Gender</td>
                <td class="auto-style3" style="width: 279px; height: 35px;">
                    <asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td style="width: 187px; height: 35px;"></td>
                <td style="width: 172px; height: 35px;"></td>
                <td style="width: 236px; height: 35px;">
                    </td>
                <td style="width: 237px; height: 35px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 32px;" class="modal-sm"></td>
                <td style="width: 356px; height: 32px;" class="modal-sm">Contact Address</td>
                <td class="auto-style3" style="width: 279px; height: 32px;">
                    <asp:TextBox ID="txtContactAddress" runat="server" ToolTip="Please Enter Contact Address"></asp:TextBox>
                </td>
                <td style="width: 187px; height: 32px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorContactAddress" runat="server" ControlToValidate="txtContactAddress" ErrorMessage="Contact address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td style="width: 172px; height: 32px;"></td>
                <td style="width: 236px; height: 32px;">
                    </td>
                <td style="width: 237px; height: 32px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 34px;" class="modal-sm"></td>
                <td style="width: 356px; height: 34px;" class="modal-sm">Email Address</td>
                <td class="auto-style3" style="width: 279px; height: 34px;">
                    <asp:TextBox ID="txtEmailAddress" runat="server" ToolTip="Please Enter Email Address"></asp:TextBox>
                </td>
                <td style="width: 187px; height: 34px;">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Email Address isn't valid (abc@gmail.com)" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td style="width: 172px; height: 34px;">
                    </td>
                <td style="width: 236px; height: 34px;">
                    
                    </td>
                <td style="width: 237px; height: 34px;">
                    </td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="width: 356px" class="modal-sm">Department Name</td>
                <td class="auto-style3" style="width: 279px">
                    <asp:DropDownList ID="ddlDepartmentName" runat="server" DataSourceID="SqlDataSourceDep" DataTextField="DepartmentName" DataValueField="DepartmentID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceDep" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 236px">
                    &nbsp;</td>
                <td style="width: 237px">
                    &nbsp;</td>
            </tr>
           
            <tr>
                <td style="width: 1210px; height: 35px;" class="modal-sm"></td>
                <td style="width: 356px; height: 35px;" class="modal-sm">Date of Birth</td>
                <td class="auto-style3" style="width: 279px; height: 35px;">
                    <asp:TextBox ID="txtDateofBirth" runat="server" TextMode="Date" Height="22px" Width="133px"></asp:TextBox>
                </td>
                <td style="width: 187px; height: 35px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone number is required." ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorDOB" runat="server" ControlToValidate="txtDateofBirth" ErrorMessage="Date must be 01/01/1970 to 01/01/2000" ForeColor="Red" MaximumValue="01/01/2000" MinimumValue="01/01/1970" Type="Date"></asp:RangeValidator>
                </td>
                <td style="width: 172px; height: 35px;"></td>
                <td style="width: 236px; height: 35px;"></td>
                <td style="width: 237px; height: 35px;"></td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 32px;" class="modal-sm"></td>
                <td style="width: 356px; height: 32px;" class="modal-sm">Phone Number</td>
                <td class="auto-style3" style="width: 279px; height: 32px;">
                    <asp:TextBox ID="txtPhoneNumber" runat="server" ToolTip="Please Enter Phone Number" Width="137px"></asp:TextBox>
                </td>
                <td style="width: 187px; height: 32px;"></td>
                <td style="width: 172px; height: 32px;"></td>
                <td style="width: 236px; height: 32px;"></td>
                <td style="width: 237px; height: 32px;"></td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 35px;" class="modal-sm"></td>
                <td style="width: 356px; height: 35px;" class="modal-sm">Confirm Phone Number</td>
                <td class="auto-style3" style="width: 279px; height: 35px;">
                    <asp:TextBox ID="txtConfirmPhoneNumber" runat="server" Width="134px"></asp:TextBox>
                </td>
                <td style="width: 187px; height: 35px;">
                    <asp:CompareValidator ID="CompareValidatorConfirmPhoneNumber" runat="server" ControlToCompare="txtPhoneNumber" ControlToValidate="txtConfirmPhoneNumber" ErrorMessage="Phone number didn't match." ForeColor="Red"></asp:CompareValidator>
                </td>
                <td style="width: 172px; height: 35px;"></td>
                <td style="width: 236px; height: 35px;"></td>
                <td style="width: 237px; height: 35px;"></td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="width: 356px" class="modal-sm">Joining Date</td>
                <td class="auto-style3" style="width: 279px">
                    
                    <asp:TextBox ID="txtJoiningDate" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButtonJoiningDate" runat="server" CausesValidation="False" Height="25px" ImageUrl="~/Images/Calender/37277204-calendar-blue-square-button.jpg" OnClick="ImageButtonJoiningDate_Click" Width="30px" />
                    
                    <asp:Calendar ID="CalendarJoiningDate" runat="server" OnSelectionChanged="CalendarJoiningDate_SelectionChanged" Width="185px"></asp:Calendar>
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 34px;" class="modal-sm"></td>
                <td style="width: 356px; height: 34px;" class="modal-sm">Doctor Image</td>
                <td class="auto-style3" style="width: 279px; height: 34px;">
                    <asp:FileUpload ID="FileUploadImage" runat="server" />
                </td>
                <td style="width: 187px; height: 34px;"></td>
                <td style="width: 172px; height: 34px;"></td>
                <td style="width: 236px; height: 34px;"></td>
                <td style="width: 237px; height: 34px;"></td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="width: 356px" class="modal-sm">
                    <asp:Label ID="lblDoctorID" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 279px">
                    &nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="width: 356px" class="modal-sm">
                    &nbsp;</td>
                <td class="auto-style3" style="width: 279px">
                    &nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px; height: 45px;" class="modal-sm"></td>
                <td style="width: 356px; height: 45px;" class="modal-sm">&nbsp;</td>
                <td class="auto-style3" style="width: 279px; height: 45px;">
                    <asp:Button ID="btnSaveDoctor" runat="server" OnClick="btnSaveDoctor_Click" Text="Save" />
                    <asp:Button ID="btnUpdateDoctor" runat="server" OnClick="btnUpdateDoctor_Click" Text="Update" />
                    <asp:Button ID="btnDeleteDoctor" runat="server" OnClick="btnDeleteDoctor_Click" Text="Delete" />
                    <asp:Button ID="btnReport" runat="server" CausesValidation="False" OnClick="btnReport_Click" Text="Report" Visible="False" />
                </td>
                <td style="width: 187px; height: 45px;"></td>
                <td style="width: 172px; height: 45px;">
                </td>
                <td style="width: 236px; height: 45px;"></td>
                <td style="width: 237px; height: 45px;"></td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                </td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">
                    &nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="width: 356px" class="modal-sm">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 279px">
                    &nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">
                    &nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="width: 356px" class="modal-sm">&nbsp;</td>
                <td class="auto-style3" style="width: 279px">
                    &nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">
                    &nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="font-size: x-large;" class="text-center" colspan="2"><em><strong>Doctor Information</strong></em></td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">
                    &nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:GridView ID="GridViewDoctorInfo" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DoctorID" DataSourceID="SqlDataSourceDoctor" EnableViewState="False" Height="232px" OnSelectedIndexChanged="GridViewDoctorInfo_SelectedIndexChanged" Width="1093px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" InsertVisible="False" ReadOnly="True" SortExpression="DoctorID" />
                            <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="ContactAddress" HeaderText="ContactAddress" SortExpression="ContactAddress" />
                            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="JoiningDate" HeaderText="JoiningDate" SortExpression="JoiningDate" />
                            <asp:ImageField DataImageUrlField="DoctorImage" HeaderText="Image" SortExpression="Image" ControlStyle-Height="50" ControlStyle-Width="50" />
                            <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" SortExpression="DepartmentID" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [DOCTOR]"></asp:SqlDataSource>
                </td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px" class="modal-sm">&nbsp;</td>
                <td style="width: 356px" class="modal-sm">&nbsp;</td>
                <td class="auto-style3" style="width: 279px">
                    &nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1210px;" class="modal-sm" >&nbsp;</td>
                <td style="width: 356px" class="modal-sm">&nbsp;</td>
                <td class="auto-style3" style="width: 279px">
                    &nbsp;</td>
                <td style="width: 187px">&nbsp;</td>
                <td style="width: 172px">&nbsp;</td>
                <td style="width: 236px">&nbsp;</td>
                <td style="width: 237px">&nbsp;</td>
            </tr>
        </table>
</asp:Content>
