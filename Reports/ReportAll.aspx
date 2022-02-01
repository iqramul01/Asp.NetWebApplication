<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportAll.aspx.cs" Inherits="MedicareHopitalLimite_Iqramul.Reports.ReportAll" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="width: 305px; height: 64px">&nbsp;</td>
            <td style="width: 128px; height: 64px">&nbsp;</td>
            <td style="width: 188px; height: 64px">&nbsp;</td>
            <td class="text-center" style="height: 64px; width: 401px; font-size: xx-large">&nbsp;</td>
            <td style="height: 64px">&nbsp;</td>
            <td style="height: 64px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 305px; height: 64px"></td>
            <td style="width: 128px; height: 64px"></td>
            <td style="width: 188px; height: 64px; font-size: x-large;"><strong><em>VIEW REPORT</em></strong></td>
            <td style="height: 64px; width: 401px"></td>
            <td style="height: 64px"></td>
            <td style="height: 64px"></td>
        </tr>
        <tr>
            <td style="width: 305px; height: 85px"></td>
            <td style="width: 128px; height: 85px">
                <asp:Label ID="lblReport" runat="server" Text="AdmitReport"></asp:Label>
            </td>
            <td style="width: 188px; height: 85px"></td>
            <td style="height: 85px; width: 401px">
                <asp:Button ID="btnReport" runat="server" OnClick="btnReport_Click" Text="Report" ForeColor="Lime" Height="30px" Width="130px" />
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />

            </td>
            <td style="height: 85px"></td>
            <td style="height: 85px"></td>

        </tr>
        <tr>
            <td style="width: 305px; height: 93px;" class="modal-sm"></td>
            <td style="width: 128px; height: 93px;">
                <asp:Label ID="lblTotalBill" runat="server" Text="BillReport"></asp:Label>
            </td>
            <td style="width: 188px; height: 93px;"></td>
            <td style="width: 401px; height: 93px;">
                <asp:Button ID="btnTotalBill" runat="server" OnClick="btnTotalBill_Click" Text="Total Bill" ForeColor="#66FF33" Width="128px" />
                <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" />
            </td>            
            <td style="height: 93px"></td>
            <td style="height: 93px"></td>


        </tr>
        <tr>
            <td style="width: 305px" class="modal-sm">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 401px">
                <asp:Button ID="btnDoctorReport" runat="server" OnClick="btnDoctorReport_Click" Text="Doctor Info" Width="132px" />
                <CR:CrystalReportViewer ID="CrystalReportViewer3" runat="server" AutoDataBind="true" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td style="width: 305px" class="modal-sm">&nbsp;</td>
            <td style="width: 128px">&nbsp;</td>
            <td style="width: 188px">&nbsp;</td>
            <td style="width: 401px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>

    </table>

</asp:Content>
