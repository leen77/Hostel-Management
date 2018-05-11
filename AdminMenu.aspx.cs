using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace ProjectHMS
{
    public partial class AdminMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Label8.Text = " ";

            if ((string)Session["user"] != null)
            { }// Label1.Text = "Welcome  " + (string)Session["user"];

            else
                Response.Redirect("Index2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now.AddDays(-1);
            DateTime dt1 = Calendar2.SelectedDate;
            if (dt1 >= dt)
            {
                Database1Entities22 db = new Database1Entities22();
                String s = DropDownList1.SelectedItem.Text;
                MessMenu mm1 = new MessMenu();
                var st = from x in db.MessMenus where x.date == dt1 && x.menu_type == s select x;

                if (st.Count()==0)
                {
                    MessMenu mm = new MessMenu();
                    mm.menu = TextBox1.Text;
                    mm.menu_type = DropDownList1.SelectedItem.Text;
                    mm.date = Calendar2.SelectedDate;
                    db.MessMenus.Add(mm);
                    db.SaveChanges();
                    Label6.Text = "Menu is successfully added";
                    Label6.ForeColor = System.Drawing.Color.ForestGreen;
                    TextBox1.Text = " ";
                    // TextBox4.Text = " ";
                    Calendar2.SelectedDates.Clear();
                }

                else
                {
                    Label8.Text = "Menu already added on this date";
                    TextBox1.Text = " ";
                    Calendar2.SelectedDates.Clear();
                }
            }
            else
            {
                Label6.Text = "Date must be greater than or equal to today";
                Label6.ForeColor = System.Drawing.Color.Firebrick;

            }
            GridView1.Visible = false;
            Calendar1.SelectedDates.Clear();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label6.Text = " ";
            Label8.Text = " ";
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {

            Label6.Text = " ";
            Label8.Text = " ";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Label6.Text = " ";
            Label8.Text = " ";
        }

        /*    protected void SqlDatasoruce1_selecting1(object sender, SqlDataSourceSelectingEventArgs e)
            {
                DateTime x = DateTime.ParseExact(TextBox5.Text, "dd/MM/yyyy", null);

                e.Command.Parameters["@date1"].Value = x;


                  else
                  {
                      e.Command.Parameters["@date1"].Value = "default";
                  }
            } */

        /*   protected void Button2_Click(object sender, EventArgs e)
           {
               GridView1.Visible = true;
           }*/
    }
}