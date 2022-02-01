using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace MedicareHopitalLimite_Iqramul.UserControls
{
    public partial class UserControllForPatientInfo : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (con = new SqlConnection(cs))
                {
                    cmd = new SqlCommand("SELECT * FROM Country", con);
                    con.Open();
                    ddlCountry.DataSource = cmd.ExecuteReader();
                    ddlCountry.DataBind();
                }
            }
        }
        public void ClearAll()
        {
            txtPatientName.Text = "";
            txtCaptcha.Text = "";
            txtEmergencyContact.Text = "";
                                   
        }
        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("SELECT DivisionName,DivisionID From Division WHERE CountryID = @countryId", con);
                cmd.Parameters.AddWithValue("countryId", ddlCountry.SelectedItem.Value);
                con.Open();
                ddlDivision.DataSource = cmd.ExecuteReader();
                ddlDivision.DataBind();
                ddlDistrict.Enabled = false;
                ddlDistrict.SelectedIndex = 0;
            }

        }

        protected void ddlDivision_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (con = new SqlConnection(cs))
            {
                cmd = new SqlCommand("SELECT DistrictName,DistrictID From District WHERE DivisionID = @divisionId", con);
                cmd.Parameters.AddWithValue("divisionId", ddlDivision.SelectedItem.Value);
                con.Open();
                ddlDistrict.DataSource = cmd.ExecuteReader();
                ddlDistrict.DataBind();
                ddlDistrict.Enabled = true;
            }
        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string checkBoxListIssue = "";
            for(int i=0; i< CheckBoxListIssue.Items.Count; i++)
            {
                if(CheckBoxListIssue.Items[i].Selected)
                {
                    if(checkBoxListIssue=="")
                    {
                        checkBoxListIssue = CheckBoxListIssue.Items[i].Text;
                    }
                    else
                    {
                        checkBoxListIssue +=","+ CheckBoxListIssue.Items[i].Text;
                    }
                }
                    
            }
            bool human = captcha.Validate(txtCaptcha.Text);
            txtCaptcha.Text = null;
            if (!human)
            {
                lblCaptchaMsg.Text = "Please Write Captcha Correctly";
            }
            else
            {
                using (con = new SqlConnection(cs))
                {
                    cmd = new SqlCommand("INSERT INTO Patient (PatientName,Gender,BloodGroup,EmergencyContact,DepartmentID,Country,Division,District,Diseases) VALUES (@patientName, @gender, @bloodGroup,@emergencyContact,@departmentid,@country,@division,@district,@diseases)", con);

                    cmd.Parameters.AddWithValue("@patientName", txtPatientName.Text);
                    cmd.Parameters.AddWithValue("@gender", rbtnPatientGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@bloodGroup", ddlBloodGroup.SelectedValue);
                    cmd.Parameters.AddWithValue("@emergencyContact", txtEmergencyContact.Text);
                    cmd.Parameters.AddWithValue("@departmentid", ddlDepartmentForPatient.SelectedValue);                   
                    cmd.Parameters.AddWithValue("@country", ddlCountry.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@division", ddlDivision.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@district", ddlDistrict.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@diseases", checkBoxListIssue);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label1.Text = "Thank you! Your Record Submitted Successfully ";
                    ClearAll();
                }
            }
        }

        protected void ddlDistrict_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }
    }
}