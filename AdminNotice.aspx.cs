using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class AdminNotice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            { }// Label1.Text = "Welcome  " + (string)Session["user"];

            else
                Response.Redirect("Index2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            Notice not = new Notice();
            not.notice_sub = TextBox1.Text;
            not.notice_descrip = TextBox2.Text;
            not.notice_date = DateTime.Now;
            Label3.Text = "Notice Successsfully Added";
            db.Notices.Add(not);
            db.SaveChanges();
            GridView1.DataBind();

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }
    }
}