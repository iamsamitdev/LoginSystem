using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace LoginSystem
{
    public partial class Stock : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            // เช็คข้อมูล Session ว่ามีหรือไม่
            if (Session["session_username"] == null)
            {
                // ส่งกลับไปหน้า Login (Default.aspx)
                Response.Redirect("Default.aspx");
            }

            // Set ค่า labelUser
            labelUser.Text = Session["session_username"].ToString();

            // ดึงข้อมูลจากตาราง Stock มาใส่ตาราง
            try
            {
                // เปิดการเชื่อมต่อฐานข้อมูล
                con.Open();
                // เขียนคำสั่ง SQL Select ข้อมูล user
                string sql = "SELECT * FROM stock ORDER BY id DESC";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                string dataRow = "";

                while (sdr.Read())
                {
                    dataRow += "<tr>" +
                                          "<td>" +sdr["id"]+ "</td>"+
                                          "<td>" + sdr["product_name"] + "</td>" +
                                          "<td>" + sdr["product_price"] + "</td >" +
                                          "<td>" + sdr["product_qty"] + "</td>" +
                                          "<td>" + sdr["product_status"] + "</td>" +
                                          "<td>"+
                                          "<a href = \"#\" class=\"btn btn-warning\">Edit</a> "+
                                          "<a href = \"#\" class=\"btn btn-danger\">Delete</a>"+
                                          "</td>" +
                                          "</tr>";
                }

                dataResult.Text = dataRow;

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear Session
            Session["session_username"] = null;
            // ส่งกลับไปหน้า Login (Default.aspx)
            Response.Redirect("Default.aspx");
        }
    }
}