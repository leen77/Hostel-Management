using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class canteenexpense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          //  Label6.Text = "Welcome  " + (string)Session["user"];
            Label5.Text = " ";
            Label11.Text = " ";
            //  Label11.Text = " ";

            if ((string)Session["user"] != null)
            { Label6.Text = "Welcome  " + (string)Session["user"]; }

            else
                Response.Redirect("Index2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            User_Canteen uc =new User_Canteen();
            uc.item_id = Int32.Parse(TextBox1.Text);
            uc.user_id = TextBox2.Text;
            uc.quantity = Int32.Parse(TextBox3.Text);
            uc.canteen_date = DateTime.Today;
            uc.canteen_status = "unpaid";
            db.User_Canteen.Add(uc);
            db.SaveChanges();
            Label5.Text = "Order added";
            Label5.ForeColor = System.Drawing.Color.ForestGreen;
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            Canteen c=new Canteen();
            c.item_id = Int32.Parse(TextBox5.Text);
            c.item_name = TextBox6.Text;
            c.item_money = Decimal.Parse(TextBox7.Text);
            db.Canteens.Add(c);
            db.SaveChanges();
           // Label11.Text = " New Item Insert Successfully ";
            TextBox5.Text = " ";
            TextBox6.Text = " ";
            TextBox7.Text = " ";
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            int mon=Int32.Parse(DropDownList1.SelectedItem.Value);
            var can = from x in db.User_Canteen where x.canteen_date.Month == mon select x; 

            foreach(var x in can)
            {
                x.canteen_status = "paid";
            }
            db.SaveChanges();
            GridView2.DataBind();
            Label11.Text = "Payed Succssfully";
        }
    }


}