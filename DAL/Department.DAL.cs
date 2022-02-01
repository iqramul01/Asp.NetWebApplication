using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.SqlClient;

namespace MedicareHopitalLimite_Iqramul.DAL
{
    public class Department
    {
        public int DepartmentID { get; set; }
        public string DepartmentName { get; set; }
        public int AvailableSeat { get; set; }
    }
    public class Department_DAL
    {
        public static string conString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        public static SqlConnection con;
        public static SqlCommand cmd;

        public static List<Department> GetDepartment()
        {
            List<Department> depList = new List<Department>();

            using (con = new SqlConnection(conString))
            {
                cmd = new SqlCommand("SELECT * FROM Department", con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Department department = new Department();
                    department.DepartmentID = Convert.ToInt32(reader["DepartmentID"]);
                    department.DepartmentName = reader["DepartmentName"].ToString();
                    department.AvailableSeat = Convert.ToInt32(reader["AvailableSeat"]);

                    depList.Add(department);
                }
                return depList;
            }
        }

        public static int InsertValue(string departmentName, int availableSeat)
        {
            using (con = new SqlConnection(conString))
            {
                string query = "INSERT INTO Department(DepartmentName,AvailableSeat)VALUES (@depname, @availableseat)";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlParameter prmCourseName = new SqlParameter("@depname", departmentName);
                cmd.Parameters.Add(prmCourseName);
                SqlParameter prmCourseDuration = new SqlParameter("@availableseat", availableSeat);
                cmd.Parameters.Add(prmCourseDuration);
                con.Open();
                return cmd.ExecuteNonQuery();

            }

        }

        public static int UpdateDepartment(int departmentId, string departmentName, int availableSeat)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                string query = "UPDATE Department SET DepartmentName=@depname,AvailableSeat=@availableseat WHERE DepartmentID=@depid";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlParameter prmDepartmentId = new SqlParameter("@depid", departmentId);
                cmd.Parameters.Add(prmDepartmentId);
                SqlParameter prmDepartmentName = new SqlParameter("@depname", departmentName);
                cmd.Parameters.Add(prmDepartmentName);
                SqlParameter prmAvailableSeat = new SqlParameter("@availableseat", availableSeat);
                cmd.Parameters.Add(prmAvailableSeat);
                con.Open();
                return cmd.ExecuteNonQuery();
            }
        }
        public static int DeleteDepartment(int departmentId)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {

                string query = "DELETE Department WHERE DepartmentID=@depid";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlParameter prmDepId = new SqlParameter("@depid", departmentId);
                cmd.Parameters.Add(prmDepId);

                con.Open();
                return cmd.ExecuteNonQuery();

            }
        }

        //public static int DeleteValue(Department department)
        //{
        //    int DeleteCount = 0;
        //    using (con = new SqlConnection(conString))
        //    {
        //        cmd = new SqlCommand("DELETE FROM Department WHERE DepartmentID = @departmentId AND DepartmentName = @departmentname AND AvailableSeat = @availableseat", con);

        //        cmd.Parameters.AddWithValue("@departmentId", department.DepartmentID);
        //        cmd.Parameters.AddWithValue("@departmentname", department.DepartmentName);
        //        cmd.Parameters.AddWithValue("@availableseat", department.AvailableSeat);

        //        con.Open();
        //        DeleteCount = cmd.ExecuteNonQuery();
        //    }
        //    return DeleteCount;
        //}



        //public static int UpdateValue(Department original_department, Department department)
        //{
        //    int UpdateCount = 0;
        //    using (con = new SqlConnection(conString))
        //    {
        //        cmd = new SqlCommand("UPDATE Department SET DepartmentName = @departmentname, AvailableSeat = @availableseat WHERE DepartmentID = @original_departmentid AND DepartmentName=@original_departmentname AND AvailableSeat = @original_availableseat", con);
        //        cmd.Parameters.AddWithValue("DepartmentName", department.DepartmentName);
        //        cmd.Parameters.AddWithValue("availableseat", department.AvailableSeat);

        //        cmd.Parameters.AddWithValue("original_departmentID", original_department.DepartmentID);
        //        cmd.Parameters.AddWithValue("original_departmentname", original_department.DepartmentName);
        //        cmd.Parameters.AddWithValue("original_availableseat", original_department.AvailableSeat);

        //        con.Open();
        //        UpdateCount = cmd.ExecuteNonQuery();
        //    }
        //    return UpdateCount;
        //}
    }
}