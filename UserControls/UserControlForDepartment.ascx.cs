using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicareHopitalLimite_Iqramul.UserControls
{
    public partial class UserControlForDepartment : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            ObjectDataSourceDep.InsertParameters["DepartmentName"].DefaultValue = ((TextBox)dgDepartmentInfo.FooterRow.FindControl("txtDepartmentName")).Text;
            ObjectDataSourceDep.InsertParameters["AvailableSeat"].DefaultValue = ((TextBox)dgDepartmentInfo.FooterRow.FindControl("txtAvailableSeat")).Text;
            ObjectDataSourceDep.Insert();
        }
    }
}