<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControllForPatientInfo.ascx.cs" Inherits="MedicareHopitalLimite_Iqramul.UserControls.UserControllForPatientInfo" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="botdetect" %>
<style type="text/css">
    .auto-style3 {
        height: 20px;
        width: 233px;
    }
    .auto-style10 {
        margin-left: 257px;
        margin-top: 0px;
        width: 716px;
        height: 498px;
        margin-right: 315px;
    }
    .auto-style15 {
        height: 73px;
    }
    .auto-style20 {
        height: 22px;
        width: 326px;
    }
    .auto-style22 {
        height: 49px;
        text-align: center;
    }
    .auto-style23 {
        height: 12px;
    }
    .auto-style24 {
        height: 33px;
        width: 233px;
    }
    .auto-style25 {
        height: 33px;
        width: 326px;
    }
    .auto-style28 {
        height: 37px;
        width: 233px;
    }
    .auto-style29 {
        height: 37px;
        width: 326px;
    }
    .auto-style30 {
        height: 22px;
        text-align: center;
    }
    .auto-style33 {
        height: 63px;
        width: 233px;
    }
    .auto-style34 {
        height: 63px;
        width: 326px;
    }
    .auto-style35 {
        height: 35px;
        width: 233px;
    }
    .auto-style36 {
        height: 22px;
        width: 233px;
    }
    .auto-style37 {
        height: 65px;
        width: 233px;
    }
    .auto-style38 {
        width: 233px;
    }
    .auto-style41 {
        height: 37px;
        width: 61px;
    }
    .auto-style42 {
        height: 33px;
        width: 61px;
    }
    .auto-style45 {
        height: 63px;
        width: 61px;
    }
    .auto-style46 {
        height: 20px;
        width: 61px;
    }
    .auto-style47 {
        height: 73px;
        width: 61px;
    }
    .auto-style48 {
        width: 61px;
    }
    .auto-style49 {
        height: 49px;
        text-align: center;
        width: 61px;
    }
    .auto-style50 {
        height: 12px;
        width: 61px;
    }
    .auto-style51 {
        height: 35px;
        width: 326px;
    }
    .auto-style52 {
        height: 65px;
        width: 326px;
    }
    .auto-style53 {
        width: 326px;
    }
    .auto-style54 {
        height: 22px;
        text-align: center;
        width: 61px;
    }
    .auto-style55 {
        height: 35px;
        width: 61px;
    }
    .auto-style56 {
        height: 22px;
        width: 61px;
    }
    .auto-style57 {
        height: 65px;
        width: 61px;
    }
    .auto-style58 {
        height: 22px;
        text-align: center;
        font-size: x-large;
        color: #660033;
    }
    .auto-style59 {
        color: #FF0000;
    }
    </style>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="auto-style10" border="0" style="background-color:azure">
            <tr>
                <td class="auto-style30" colspan="3">
                    <h3 class="auto-style59"><em>Please Fill Up The Following Form With Proper Information</em></h3>
                </td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style30" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style58" colspan="3"><strong><em>Patient Information</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style54">&nbsp;</td>
                <td class="auto-style30" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" colspan="3">
                    <strong><em>Please Input Correct Information</em></strong></td>
            </tr>
            <tr>
                <td class="auto-style55">
                    &nbsp;</td>
                <td class="auto-style35">
                    <asp:Label ID="lblPatientName" runat="server" Text="Patient Name"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPatientName" runat="server" ErrorMessage="Patient Name is Required" ForeColor="#FF3300" ControlToValidate="txtPatientName">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">
                    &nbsp;</td>
                <td class="auto-style28">
                    <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style29">
                    <asp:RadioButtonList ID="rbtnPatientGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style55">
                    &nbsp;</td>
                <td class="auto-style35">
                    <asp:Label ID="lblBloodGroup" runat="server" Text="Blood Group"></asp:Label>
                </td>
                <td class="auto-style51">
                    <asp:DropDownList ID="ddlBloodGroup" runat="server">
                        <asp:ListItem>Choose Blood Group</asp:ListItem>
                        <asp:ListItem>O +</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style42">
                    &nbsp;</td>
                <td class="auto-style24">
                    <asp:Label ID="lblEmergencyContact" runat="server" Text="Emergency Contact"></asp:Label>
                </td>
                <td class="auto-style25">
                    <asp:TextBox ID="txtEmergencyContact" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmergencyContact" runat="server" ErrorMessage="Phone Number is Required" ForeColor="#FF3300" ControlToValidate="txtEmergencyContact">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">
                    &nbsp;</td>
                <td class="auto-style36">
                    <asp:Label ID="lblDepartment" runat="server" Text="Department"></asp:Label>
                </td>
                <td class="auto-style20">
                    <asp:DropDownList ID="ddlDepartmentForPatient" runat="server" DataSourceID="SqlDataSourceDepForPatient" DataTextField="DepartmentName" DataValueField="DepartmentID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceDepForPatient" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style37">
                    <asp:Label ID="lblCountry" runat="server" Text="Select Country"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" DataTextField="CountryName" DataValueField="CountryID">
                    <asp:ListItem Value="0">Select Country</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceCountry" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
                </td>

            </tr>
            <tr>
                <td class="auto-style57">
                    &nbsp;</td>
                <td class="auto-style37">
                    <asp:Label ID="lblDivision" runat="server" Text="Select Division"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:DropDownList ID="ddlDivision" runat="server" OnSelectedIndexChanged="ddlDivision_SelectedIndexChanged" DataTextField="DivisionName" DataValueField="DivisionID" AutoPostBack="True">
                    <asp:ListItem Value="0">Select Division</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceDivision" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Division]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style45">
                    &nbsp;</td>
                <td class="auto-style33">
                    <asp:Label ID="lblDistrict" runat="server" Text="Select District"></asp:Label>
                </td>
                <td class="auto-style34">
                    <asp:DropDownList ID="ddlDistrict" runat="server" DataTextField="DistrictName" DataValueField="DistrictID"  OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged1">
                    <asp:ListItem Value="0">Select District</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [District]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">
                    &nbsp;</td>
                <td class="auto-style36">
                    <asp:Label ID="lblDisease" runat="server" Text="Disease"></asp:Label>
                </td>
                <td class="auto-style53" rowspan="3">
                    <asp:CheckBoxList ID="CheckBoxListIssue" runat="server" Height="90px" Width="189px">
                        <asp:ListItem>BP</asp:ListItem>
                        <asp:ListItem>Daivaties</asp:ListItem>
                        <asp:ListItem>Alergy</asp:ListItem>
                        <asp:ListItem>Heart Problem</asp:ListItem>
                        <asp:ListItem>None</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style56">
                    &nbsp;</td>
                <td class="auto-style36">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style46">
                    &nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47">
                    &nbsp;</td>
                <td class="auto-style15" colspan="2">
                    <BotDetect:WebFormsCaptcha ID="captcha" runat="server" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style48">
                    &nbsp;</td>
                <td class="auto-style38">
                    <asp:Label ID="lblCaptcha" runat="server">Enter Captcha</asp:Label>
                </td>
                <td class="auto-style53">
                    <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
                    <asp:Label ID="lblCaptchaMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style49">
                    &nbsp;</td>
                <td class="auto-style22" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="Lime" BorderStyle="Solid" OnClick="btnSubmit_Click" Text="Submit" Width="300px" />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style50">
                    &nbsp;</td>
                <td class="auto-style23" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummaryPatientInfo" runat="server" ForeColor="#FF3300" />
                </td>
            </tr>
        </table>

    </ContentTemplate>
</asp:UpdatePanel>
