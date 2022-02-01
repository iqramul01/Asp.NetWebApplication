<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="MedicareHopitalLimite_Iqramul.Appointment.Appointment" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:honeydew">
        <h1 class="text-center" style="color: #0066FF"><em>Medicare Hospital Limited.</em></h1>
        <h3><em>We are always ready to serve you. You can get any health related information from our Doctors and Staff<br>
            Here we provides our Doctors information with their contact number. You can contact directly with doctors<br />
            without any hesitation. 
        </em> 
        </h3>
        
    <table class="nav-justified">
        <tr>
            <td style="text-align: center; font-size: x-large; color: #333300;" colspan="3">
                 <strong><em>Doctors Information
            </em></strong>
            </td>
           
        </tr>
        <tr>
            <td class="modal-sm" style="width: 330px; text-align: center;" rowspan="3">&nbsp;</td>
            <td rowspan="6" class="text-center" style="margin-left: 40px">
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="353px" Width="488px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" style="margin-left: 59px">
                    <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:ImageField DataImageUrlField="DoctorImage" HeaderText="" SortExpression="Image" ControlStyle-Height="100" ControlStyle-Width="100" >
                       </asp:ImageField>

                        <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName"/>
                        <asp:BoundField DataField="ContactAddress" HeaderText="ContactAddress" SortExpression="ContactAddress" />
                        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        
                    </Fields>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [DoctorName], [ContactAddress], [EmailAddress], [PhoneNumber], [DoctorImage] FROM [DOCTOR]"></asp:SqlDataSource>
                <div class="text-center">
                <br />
                <br />

                </div>

            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>

            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>

            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 330px; text-align: center;">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 330px; text-align: center;">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 330px; text-align: center;">&nbsp;</td>
            <td class="text-center">&nbsp;</td>
        </tr>
    </table>

     <div style="text-align:center">
        <asp:Button ID="btnApp" runat="server" Text="Appointment" BackColor="RoyalBlue" ForeColor="White" BorderColor="Transparent" Width="225px" ToolTip="Click here make your Appointment"/>
    </div>
    <br />
           <h4> You can also make an Appointment with your preffered doctor by easily clicking Appointment Button. If you Want to make an Appointment please <br />
               click Appointment Button and fill up the form. You should provide correct information. We are informing you about your Appointment by Mail.<br />
            </h4>

        </div>

    
    <ajaxToolkit:ModalPopupExtender id="mp1" runat="server" popupcontrolid="Panl1" targetcontrolid="btnApp"
        cancelcontrolid="Button2" backgroundcssclass="Background"></ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="Panl1" runat="server" CssClass="Popup" align="center" style = "display:none">  
    <iframe style="background-color:aquamarine; width: 400px; height: 450px;" id="irm1" src="MakeAppointment.aspx" runat="server"></iframe>
<br/>  
        
        <br />
    <asp:Button ID="btnClose" runat="server" Text="Close" style = "background-color:red" /> 
        
        <br />

    </asp:Panel>
</asp:Content>
