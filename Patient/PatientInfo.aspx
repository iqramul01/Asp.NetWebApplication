<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientInfo.aspx.cs" Inherits="MedicareHopitalLimite_Iqramul.Patient.PatientInfo" %>

<%@ Register Src="~/UserControls/UserControllForPatientInfo.ascx" TagPrefix="uc1" TagName="UserControllForPatientInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:cadetblue">        
    <uc1:UserControllForPatientInfo runat="server" id="UserControllForPatientInfo" />
    </div>
</asp:Content>
