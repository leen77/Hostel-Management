using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
                Label1.Text = "Welcome  " + (string)Session["user"];

            else
                Response.Redirect("Index2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("manageuser.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcomplaints.aspx");
        }
    }
}