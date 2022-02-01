<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeAppointment.aspx.cs" Inherits="MedicareHopitalLimite_Iqramul.Appointment.MakeAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 406px;
        }
        .auto-style2 {
            height: 20px;
            width: 406px;
        }
        .auto-style3 {
            width: 246px;
        }
        .auto-style4 {
            height: 20px;
            width: 246px;
        }
        .auto-style5 {
            margin-left: 55px;
        }
        .auto-style6 {
            text-align: center;
            color: #CC0000;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />

            <table class="auto-style5">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6" colspan="2"><strong><em>Appointment Form</em></strong></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="modal-sm" style="width: 189px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 189px">
                <asp:TextBox ID="txtAppPatientName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtAppPatientName" ErrorMessage="Please Enter Your Name." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 20px; width: 189px;">
                <asp:TextBox ID="txtAppPatientEmail" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="txtAppPatientEmail" ErrorMessage="Please Enter Your Email Address." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtAppPatientEmail" ErrorMessage="Please Enter Valid Email Address." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 20px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblDoctorName" runat="server" Text="Doctor Name"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 189px">
                <asp:DropDownList ID="ddlAppDoctorID" runat="server" DataSourceID="SqlDataSourceAppDoc" DataTextField="DoctorName" DataValueField="DoctorID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceAppDoc" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [DOCTOR]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 189px">
                <asp:TextBox ID="txtAppDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server" ControlToValidate="txtAppDate" ErrorMessage="Please Choose Date." ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorDate" runat="server" ControlToValidate="txtAppDate" ErrorMessage="Appointment is not available" ForeColor="#CC0000" MaximumValue="01/01/2022" MinimumValue="01/01/2021" Type="Date"></asp:RangeValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td colspan="2">
                <asp:CheckBox ID="cboxAppAgree" runat="server" />
                Yes, I want to make an Appointment.</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="modal-sm" style="width: 189px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="modal-sm" style="width: 189px">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummaryAppointment" runat="server" ForeColor="Red" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
