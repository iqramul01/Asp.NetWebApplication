using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace MedicareHopitalLimite_Iqramul.Appointment
{
    public partial class MakeAppointment : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                DateTime date = DateTime.Today;
                RangeValidatorDate.MinimumValue = date.AddDays(1).ToShortDateString();
                RangeValidatorDate.MaximumValue = date.AddDays(15).ToShortDateString();


                //rgvDate.MinimumValue = date.ToShortDateString();
                //rgvDate.MaximumValue = date.AddDays(15).ToShortDateString();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            if (cboxAppAgree.Checked && txtAppPatientName.Text != "" && txtAppPatientEmail.Text != "" && txtAppDate.Text != "")
            {
                con.Open();
                cmd = new SqlCommand("INSERT INTO Appointment (Name,Email,DoctorID,Date) VALUES (@name,@email,@doctorID,@date)", con);
                cmd.Parameters.AddWithValue("@name", txtAppPatientName.Text);
                cmd.Parameters.AddWithValue("@email", txtAppPatientEmail.Text);
                cmd.Parameters.AddWithValue("@doctorID", ddlAppDoctorID.SelectedValue);
                cmd.Parameters.AddWithValue("@date", txtAppDate.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                sendEmailToUser();
                sendMailToAuthority();

                txtAppPatientName.Text = "";
                txtAppPatientEmail.Text = "";
                cboxAppAgree.Checked = false;
            }
            else
            {

            }

        }
        private void sendEmailToUser()
        {
            var fromAddress = "iqramulcs46@gmail.com";
            const string fromPassword = "Iqramul@46";
            var toAddress = txtAppPatientEmail.Text.ToString();
            string subject = "Appointment Confirmtion";
            string body = txtAppPatientName.Text + ", We are confirming your Appointment. " + "\n";
            body += "Hospital Address : Medicare Hospital Limited (MHL), Kumira,Sitakunda Chittagong" + "\n";
            body += "Please feel free to call me on (+8801868 330 723) or contact by (iqramulcs46@gmail.com), if you require any further information.";


            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }

            smtp.Send(fromAddress, toAddress, subject, body);
        }

        private void sendMailToAuthority()
        {

            var fromAddress = "iqramulcs46@gmail.com";
            const string fromPassword = "Iqramul@46";
            var toAddress = "iqramul.sfaco@gmail.com";

            string subject = "Appointment Confirmation";

            string body = txtAppPatientName.Text + " is taking an Appointment.\n";
            body += "Patient Name : " + txtAppPatientName.Text + "\n";
            body += "Email Address : " + txtAppPatientEmail.Text + "\n";
            body += "Appointment Date : " + txtAppDate.Text;


            // smtp Settings
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }
    }
}