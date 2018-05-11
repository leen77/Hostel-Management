using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class SendComplaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            Complaint c = new Complaint();
            c.complaint_date = DateTime.Today;
            c.complaint_subject = TextBox1.Text;
            c.complaint_descrip = TextBox2.Text;
           c.user_id = (string)Session["user"];
            c.complaint_status = "pending";
            db.Complaints.Add(c);
            db.SaveChanges();
            Label3.Text = "Your Complaint is Successfully Registerer to Admin and granted within 3 days";
            GridView1.DataBind();
            Label3.ForeColor = System.Drawing.Color.ForestGreen;
            TextBox1.Text = " ";
            TextBox2.Text = " ";
        }
    }
}