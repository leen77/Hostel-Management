using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class UpdateHostel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int abc = Int32.Parse(DropDownList1.SelectedItem.Text);
            Database1Entities22 db = new Database1Entities22();
            var rm = from s in db.Rooms where s.room_capacity == abc select s;
            foreach (var room in rm)
            {
                room.room_price = Int32.Parse(TextBox1.Text);
            }
            db.SaveChanges();
            Label3.Text = "Price Updated";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label3.Text = " ";
            int abc = Int32.Parse(DropDownList1.SelectedItem.Text);
            Database1Entities22 db = new Database1Entities22();
            Room rm = db.Rooms.Where(s => s.room_capacity == abc).FirstOrDefault<Room>();
            TextBox1.Text = rm.room_price.ToString();
        }
    }
}