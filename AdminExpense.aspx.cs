using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
using System.Web.Configuration;



namespace ProjectHMS
{
    public partial class AdminExpense : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd = new SqlCommand();
        SqlDataReader sr;
        string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
  
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Label16.Text = " ";
            Label9.Text = " ";
            DropDownList2.Visible = false;
            DropDownList3.Visible = false;
            DropDownList4.Visible = false;
            Button5.Visible = false;
            Button6.Visible = false;
            Button7.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            cmd.Connection = conn;
            cmd.CommandText = "Select * from UserDb where name=@search";
            cmd.Parameters.AddWithValue("@search", TextBox1.Text);

            conn.Open();
            sr = cmd.ExecuteReader();
            sr.Read();
            Label4.Text = sr["user_id"].ToString();

            Label5.Text = sr["name"].ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label9.Text = " ";
            Label16.Text = " ";
            if (DropDownList1.SelectedItem.Text == "Laundry")
            {
                Label7.Visible = true;
                Label8.Visible = true;
                GridView1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                Button2.Visible = true;
                Label10.Visible = false;
                Label11.Visible = false;
                Label12.Visible = false;
                GridView2.Visible = false;
                Button3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox6.Visible = false;
                Label13.Visible =false;
                Label14.Visible = false;
                GridView3.Visible = false;
                Button4.Visible = false;
                TextBox7.Visible = false;
                TextBox8.Visible = false;
                Button5.Visible = true;
                DropDownList2.Visible = true;
                DropDownList3.Visible = false;
                DropDownList4.Visible = false;
                Button7.Visible = false;
                Button6.Visible = false;
            }

            else if(DropDownList1.SelectedItem.Text == "Penalty")
            {
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                GridView2.Visible = true;
                Button3.Visible = true;
                TextBox4.Visible = true;
                TextBox5.Visible = true;
                TextBox6.Visible = true;
                Label7.Visible = false;
                Label8.Visible = false;
                GridView1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                Button2.Visible = false;
                Label13.Visible = false;
                Label14.Visible = false;
                GridView3.Visible = false;
                Button4.Visible = false;
                TextBox7.Visible = false;
                TextBox8.Visible = false;
                Button6.Visible = true;
                DropDownList3.Visible = true;
                DropDownList2.Visible = false;
                DropDownList4.Visible = false;
                Button5.Visible = false;
                Button7.Visible = false;
            }

            else if (DropDownList1.SelectedItem.Text == "Other Expense")
            {
                Label13.Visible = true;
                Label14.Visible = true;
                GridView3.Visible = true;
                Button4.Visible = true;
                TextBox7.Visible = true;
                TextBox8.Visible = true;
                Label7.Visible = false;
                Label8.Visible = false;
                GridView1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                Button2.Visible = false;
                Label10.Visible = false;
                Label11.Visible = false;
                Label12.Visible = false;
                GridView2.Visible = false;
                Button3.Visible = false;
                TextBox4.Visible = false;
                TextBox5.Visible = false;
                TextBox6.Visible = false;
                Button7.Visible = true;
                DropDownList4.Visible = true;
                DropDownList2.Visible = false;
                DropDownList3.Visible = false;
                Button5.Visible = false;
                Button6.Visible = false;
            }

        }

    /*    protected void SqlDatasoruce1_selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {
            String x = TextBox1.Text;
            if (TextBox1.Text.Length != 0)
            {
                e.Command.Parameters["@UserId"].Value = x;

            }
            else
            {
                e.Command.Parameters["@UserId"].Value = "default";
            }
        }

        protected void SqlDatasoruce2_selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {
            String x = TextBox1.Text;
            if (TextBox1.Text.Length != 0)
            {
                e.Command.Parameters["@UserId1"].Value = x;

            }
            else
            {
                e.Command.Parameters["@UserId1"].Value = "default";
            }
        }

        protected void SqlDatasoruce3_selecting1(object sender, SqlDataSourceSelectingEventArgs e)
        {
            String x = TextBox1.Text;
            if (TextBox1.Text.Length != 0)
            {
                e.Command.Parameters["@UserId2"].Value = x;

            }
            else
            {
                e.Command.Parameters["@UserId2"].Value = "default";
            }
        }
        */
        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList2.Visible = true;
            Button5.Visible = true;
            Database1Entities22 db = new Database1Entities22();
            Laundry ly = new Laundry();
            ly.user_id = Label4.Text;
            ly.total_items = Int32.Parse(TextBox2.Text);
            ly.laundry_money = Int32.Parse(TextBox3.Text);
            ly.laundry_date = DateTime.Today;
            ly.laundry_status = "unpaid";
            db.Laundries.Add(ly);
            db.SaveChanges();
            Label9.Text = "Successfully Inserted";
            Label9.ForeColor = System.Drawing.Color.ForestGreen;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DropDownList3.Visible = true;
            Button6.Visible = true;
            Database1Entities22 db = new Database1Entities22();
            Penalty p = new Penalty();
             p.user_id = Label4.Text;
             p.penalty_subject= TextBox4.Text;
             p.penalty_descrip = TextBox5.Text;
            p.penalty_money = Int32.Parse(TextBox6.Text);
            p.penalty_date = DateTime.Today;
            p.penalty_status = "unpaid";
            db.Penalties.Add(p);
            db.SaveChanges();
            Label9.Text = "Successfully Inserted";
            Label9.ForeColor = System.Drawing.Color.ForestGreen;
            GridView2.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)

        {
            DropDownList4.Visible = true;
            Button7.Visible = true;
            Database1Entities22 db = new Database1Entities22();
             Expense ex = new Expense();
            ex.user_id = Label4.Text;
             ex.expense_descrip = TextBox7.Text;
            ex.expense_money = Int32.Parse(TextBox8.Text);
            ex.expense_date = DateTime.Today;
            ex.expense_status = "unpaid";
            db.Expenses.Add(ex);
            db.SaveChanges();
            Label9.Text = "Successfully Inserted";
            Label9.ForeColor = System.Drawing.Color.ForestGreen;
            GridView3.DataBind();
        }
        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod()]

        public static List<string> GetNames(string prefixText, int count)
        {
            // using (SqlConnection conn = new SqlConnection())
            //{
            SqlConnection conn;
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(str);
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select name from UserDb where " +
                "name like @SearchText1 + '%'";
                cmd.Parameters.AddWithValue("@SearchText1", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> Names1 = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    // Label2.Text = "hi";
                    while (sdr.Read())
                    {

                        Names1.Add(sdr["name"].ToString());
                    }
                }
                conn.Close();
                return Names1;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           
            
            Database1Entities22 db = new Database1Entities22();
            int mon1 = Int32.Parse(DropDownList2.SelectedItem.Value);
            var lau = from x in db.Laundries where x.laundry_date.Month == mon1 select x;

            foreach (var x in lau)
            {
                x.laundry_status = "paid";
            }
            db.SaveChanges();
            GridView1.DataBind();
            Label16.Text = "Payed Succssfully";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            int mon2 = Int32.Parse(DropDownList3.SelectedItem.Value);
            var pen = from x in db.Penalties where x.penalty_date.Month == mon2 select x;

            foreach (var x in pen)
            {
                x.penalty_status = "paid";
            }
            db.SaveChanges();
            GridView2.DataBind();
            Label16.Text = "Payed Succssfully";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            int mon3 = Int32.Parse(DropDownList4.SelectedItem.Value);
            var exp = from x in db.Expenses where x.expense_date.Month == mon3 select x;

            foreach (var x in exp)
            {
                x.expense_status = "paid";
            }
            db.SaveChanges();
            GridView3.DataBind();
            Label16.Text = "Payed Succssfully";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}