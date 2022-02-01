using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace MedicareHopitalLimite_Iqramul.Doctors
{
    public partial class DoctorInfo : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CalendarJoiningDate.Visible = false;
            }
        }

        public void ClearAll()
        {
            txtDoctorName.Text = "";
            txtConfirmPhoneNumber.Text = "";
            txtContactAddress.Text = "";
            txtDateofBirth.Text = "";
            txtEmailAddress.Text = "";
            txtJoiningDate.Text = "";
            txtPhoneNumber.Text = "";
        }
        protected void ImageButtonJoiningDate_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarJoiningDate.Visible)
            {
                CalendarJoiningDate.Visible = false;
            }
            else
            {
                CalendarJoiningDate.Visible = true;
            }


        }

        protected void CalendarJoiningDate_SelectionChanged(object sender, EventArgs e)
        {
            txtJoiningDate.Text = CalendarJoiningDate.SelectedDate.ToString("d");
            CalendarJoiningDate.Visible = false;
        }

        protected void btnSaveDoctor_Click(object sender, EventArgs e)
        {
            string imgPath = Path.GetFileName(FileUploadImage.PostedFile.FileName);
            FileUploadImage.SaveAs(MapPath("~/Images/DoctorImages/" + imgPath));
            con = new SqlConnection(cs);
            con.Open();
            cmd = new SqlCommand("INSERT INTO DOCTOR (DoctorName,Gender,ContactAddress,EmailAddress,DateOfBirth,PhoneNumber,JoiningDate,DoctorImage, DepartmentID) " +
                "VALUES(@doctorName, @gender, @contactAddress,@email, @dateOfBirth, @phoneNumber, @joiningDate, @doctorImage, @departmentID)", con);
            cmd.Parameters.AddWithValue("@doctorName", txtDoctorName.Text);
            cmd.Parameters.AddWithValue("@gender", rbtnGender.SelectedValue);
            cmd.Parameters.AddWithValue("@contactAddress", txtContactAddress.Text);
            cmd.Parameters.AddWithValue("@email", txtEmailAddress.Text);
            cmd.Parameters.AddWithValue("@dateOfBirth", txtDateofBirth.Text);
            cmd.Parameters.AddWithValue("@phoneNumber", txtPhoneNumber.Text);
            cmd.Parameters.AddWithValue("@joiningDate", CalendarJoiningDate.SelectedDate);
            cmd.Parameters.AddWithValue("@doctorImage", "~/Images/DoctorImages/" + imgPath);
            cmd.Parameters.AddWithValue("@departmentID", ddlDepartmentName.SelectedValue);

            cmd.ExecuteNonQuery();
            con.Close();
            ClearAll();
            lblMessage.Text = "Record Saved Successfully!!!";
        }

        protected void btnUpdateDoctor_Click(object sender, EventArgs e)
        {
            string imgPath = Path.GetFileName(FileUploadImage.PostedFile.FileName);
            FileUploadImage.SaveAs(MapPath("~/Images/DoctorImages/" + imgPath));


            con = new SqlConnection(cs);

            con.Open();
            cmd = new SqlCommand("UPDATE DOCTOR SET DoctorName=@doctorName,Gender=@gender,ContactAddress=@contactAddress,EmailAddress=@email,DateOfBirth=@dateOfBirth,PhoneNumber = @phoneNumber, /*JoiningDate = @joiningDate,*/ DoctorImage = @doctorImage, DepartmentID = @departmentID WHERE DoctorID = @doctorID", con);
            cmd.Parameters.AddWithValue("@doctorID", lblDoctorID.Text);
            cmd.Parameters.AddWithValue("@doctorName", txtDoctorName.Text);
            cmd.Parameters.AddWithValue("@gender", rbtnGender.SelectedValue);
            cmd.Parameters.AddWithValue("@contactAddress", txtContactAddress.Text);
            cmd.Parameters.AddWithValue("@email", txtEmailAddress.Text);
            cmd.Parameters.AddWithValue("@dateOfBirth", txtDateofBirth.Text);
            cmd.Parameters.AddWithValue("@phoneNumber", txtPhoneNumber.Text);
            //cmd.Parameters.AddWithValue("@joiningDate", CalendarJoiningDate.SelectedDate);
            cmd.Parameters.AddWithValue("@doctorImage", "~/Images/DoctorImages/" + imgPath);
            cmd.Parameters.AddWithValue("@departmentID", ddlDepartmentName.SelectedValue);

            cmd.ExecuteNonQuery();
            con.Close();
            ClearAll();
            lblMessage.Text = "Record Updated Successfully!!!";
        }

        protected void btnDeleteDoctor_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            con.Open();
            cmd = new SqlCommand("Delete Doctor WHERE DoctorID=@doctorID ", con);
            cmd.Parameters.AddWithValue("@doctorID", lblDoctorID.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            ClearAll();

            lblMessage.Text = "Record Deleted Successfully!!!";

        }

        protected void GridViewDoctorInfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblDoctorID.Text = GridViewDoctorInfo.SelectedRow.Cells[1].Text;
            txtDoctorName.Text = GridViewDoctorInfo.SelectedRow.Cells[2].Text;
            rbtnGender.SelectedValue = GridViewDoctorInfo.SelectedRow.Cells[3].Text;
            txtContactAddress.Text = GridViewDoctorInfo.SelectedRow.Cells[4].Text;
            txtEmailAddress.Text = GridViewDoctorInfo.SelectedRow.Cells[5].Text;

            txtPhoneNumber.Text = GridViewDoctorInfo.SelectedRow.Cells[7].Text;

            ddlDepartmentName.SelectedValue = GridViewDoctorInfo.SelectedRow.Cells[10].Text;
        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            
        }
    }

}
