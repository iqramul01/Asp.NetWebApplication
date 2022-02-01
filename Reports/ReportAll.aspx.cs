using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


namespace MedicareHopitalLimite_Iqramul.Reports
{
    public partial class ReportAll : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

        ReportDocument report = new ReportDocument();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Select * From Admit", con);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dataAdapter.Fill(ds);

            ReportDocument reportDocument = new ReportDocument();
            reportDocument.Load(Server.MapPath("~/Reports/AdmitReport.rpt"));
            //reportDocument.Load(Server.MapPath("AdmitReport.rpt"));
            reportDocument.SetDataSource(ds.Tables["tables"]);
            CrystalReportViewer1.ReportSource = reportDocument;
            reportDocument.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Admit");
        }

        protected void btnTotalBill_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Select * From Admit", con);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dataAdapter.Fill(ds);

            report.Load(Server.MapPath("~/Reports/rptBillSummary.rpt"));

            report.SetDataSource(ds.Tables["table"]);
            CrystalReportViewer2.ReportSource = report;
            report.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Admit");

        }

        protected void btnDoctorReport_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(cs);
            cmd = new SqlCommand("Select * From DOCTOR", con);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            dataAdapter.Fill(ds);

            report.Load(Server.MapPath("~/Reports/rptDoctor.rpt"));

            report.SetDataSource(ds.Tables["table"]);
            CrystalReportViewer3.ReportSource = report;
            report.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "DOCTOR");
        }
    }
}