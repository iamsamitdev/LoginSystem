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
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                var Username = Request.Form["username"];
               var Password = Request.Form["password"];

                // เปิดการเชื่อมต่อฐานข้อมูล
                con.Open();
                // เขียนคำสั่ง SQL Select ข้อมูล user
                string sql = "SELECT * FROM users WHERE username='" + Username+ "' and password='" + Password+"'";
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    //Response.Write("Login Success<br>");
                    // สร้าง Session ไว้ตรวจข้อมูลการ Login
                    Session["session_username"] = Username;
                    // ส่งไปหน้า  Member
                    Response.Redirect("Member.aspx");
                }
                else
                {
                    labelMessage.Text = "<div class='alert alert-danger text-center'>ข้อมูลเข้าระบบไม่ถูกต้อง ลองใหม่!</div>";
                }

                // ปิดการเชื่อมต่อ
                con.Close();
            }catch(Exception ex){
                Response.Write(ex);
            }

        }
    }
}