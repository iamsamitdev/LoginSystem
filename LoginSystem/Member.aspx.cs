using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginSystem
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // เช็คข้อมูล Session ว่ามีหรือไม่
            if(Session["session_username"] == null)
            {
                // ส่งกลับไปหน้า Login (Default.aspx)
                Response.Redirect("Default.aspx");
            }

            // Set ค่า labelUser
            labelUser.Text = Session["session_username"].ToString();
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