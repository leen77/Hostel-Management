using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class usergate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = " ";
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
       {
            Database1Entities22 db = new Database1Entities22();
            GatePass gt = new GatePass();
            gt.user_id  = (String)Session["User"];
            gt.gate_reason = TextBox1.Text;
            gt.gate_date = Calendar1.SelectedDate;
            db.GatePasses.Add(gt);
            db.SaveChanges();
            Label3.Text = "Request Submitted";
        }
    }
}