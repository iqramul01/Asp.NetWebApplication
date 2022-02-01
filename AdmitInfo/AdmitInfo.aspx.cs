using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;


namespace MedicareHopitalLimite_Iqramul.Patient
{
    public partial class AdmitInfo : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblReleaseDate.Visible = false;
            //txtReleaseDate.Visible = false;
            //lblTotalBill.Visible = false;
            //txtTotalBill.Visible = false;
        }
        //protected void btnUpdateAdmit_Click1(object sender, EventArgs e)
        //{

        //}

        public void ClearAll()
        {
            txtAdmitFee.Text = "";
            txtTotalBill.Text = "";
        }
        public void UpdateOption()
        {
            lblReleaseDate.Visible = true;
            txtReleaseDate.Visible = true;
            lblTotalBill.Visible = true;
            txtTotalBill.Visible = true;
            lblAdmitDate.Visible = false;
            txtAdmitDate.Visible = false;
        }
        public void AdmitOption()
        {
            lblReleaseDate.Visible = false;
            txtReleaseDate.Visible = false;
            lblTotalBill.Visible = false;
            txtTotalBill.Visible = false;
            lblAdmitDate.Visible = true;
            txtAdmitDate.Visible = true;
            lblAdmitFee.Visible = true;
            txtAdmitFee.Visible = true;
        }
        protected void btnAdmit_Click(object sender, EventArgs e)
        {                            
            con = new SqlConnection(cs);
            con.Open();
            if(txtAdmitDate.Text!=""& txtAdmitFee.Text!="")
            {
                cmd = new SqlCommand("EXEC sp_PatientAdmit @admitdate,@admitfee,@patientid", con);
                cmd.Parameters.AddWithValue("@admitdate", txtAdmitDate.Text);
                cmd.Parameters.AddWithValue("@admitfee", txtAdmitFee.Text);
                cmd.Parameters.AddWithValue("@patientid", ddlPatientID.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                ClearAll();
            }
            else
            {
                lblAdmitMessage.Text = "Please Enter Valid Information!!!";
            }

        }

        protected void GridViewAdmit_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateOption();
            txtAdmitID.Text = GridViewAdmit.SelectedRow.Cells[1].Text;
            txtAdmitDate.Text = GridViewAdmit.SelectedRow.Cells[2].Text;
            txtAdmitFee.Text = GridViewAdmit.SelectedRow.Cells[3].Text;
            ddlPatientID.SelectedValue = GridViewAdmit.SelectedRow.Cells[4].Text;

        }

        protected void btnUpdateAdmit_Click(object sender, EventArgs e)
        {

            con = new SqlConnection(cs);
            con.Open();
       
            if (txtTotalBill.Text!="" & txtReleaseDate.Text!="")
            {
                cmd = new SqlCommand("EXEC sp_PatientRelease @admitid,@admitdate,@admitfee,@patientid,@totalbill,@releasedate", con);
                cmd.Parameters.AddWithValue("@admitid", txtAdmitID.Text);
                cmd.Parameters.AddWithValue("@admitdate", txtAdmitDate.Text);

                cmd.Parameters.AddWithValue("@admitfee", txtAdmitFee.Text);
                cmd.Parameters.AddWithValue("@patientid", ddlPatientID.SelectedValue);

                cmd.Parameters.AddWithValue("@totalbill", txtTotalBill.Text);
                cmd.Parameters.AddWithValue("@releasedate", txtReleaseDate.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                AdmitOption();
                ClearAll();
            }
            else
            {
                lblAdmitMessage.Text = "Please Enter Valid Information!!!";
            }
            
        }

    }
}