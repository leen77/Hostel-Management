using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
namespace ProjectHMS
{
    public partial class library : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
         //   GridView1.DataBind();
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Database1Entities22 db = new Database1Entities22();
            int bid = Int32.Parse(TextBox3.Text);
            string uid = TextBox4.Text; 
            Library lb = db.Libraries.Where(s=>s.book_id==bid).FirstOrDefault<Library>();
            int books = db.Takes.Count(s => (s.user_id).Equals(uid));
            int same = db.Takes.Count(s => (s.user_id).Equals(uid) && s.book_id == bid);
            if (same != 0)
            {
                Label5.Text = "Book already issued";
            }
            else if (lb.units_available > 0 && books < 3)
            {
                Take tk = new Take();
                tk.book_id = Int32.Parse(TextBox3.Text);
                tk.user_id = TextBox4.Text;
                tk.issue_date = DateTime.Now;
                tk.due_date = DateTime.Now.AddDays(21);
                db.Takes.Add(tk);
                lb.units_available--;
                db.SaveChanges();
                Label5.Text = "Book Successfully Issued";
                Label5.ForeColor = System.Drawing.Color.ForestGreen;
                GridView1.DataBind();
                GridView3.DataBind();
            }
            else if (books == 3)
            {
                Label5.Text = "Maximum number of books issued";
                Label5.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label5.Text = "All books issued";
                Label5.ForeColor = System.Drawing.Color.ForestGreen;
            }
                TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            int bid = Int32.Parse(TextBox3.Text);
            string uid = TextBox4.Text;
            Take tk = db.Takes.Where(s=>(s.user_id).Equals(uid) && s.book_id == bid).FirstOrDefault<Take>();
            if (tk == null)
            {
                Label5.Text = "No such Book issued";
                Label5.ForeColor = System.Drawing.Color.ForestGreen;
                return;
            }
            DateTime dt = DateTime.Now;
            if (tk.due_date < dt)
            {
                double days = ( dt - tk.due_date).TotalDays;
                Label6.Text = "You are" + days + "days late penalty will be charged";
            }
            Library lb = db.Libraries.Where(s => s.book_id == bid).FirstOrDefault<Library>();
            lb.units_available++;
            db.Takes.Remove(tk);
            db.SaveChanges();
            Label5.Text = "Book Successfully returned";
            Label5.ForeColor = System.Drawing.Color.ForestGreen;
            GridView1.DataBind();
            GridView3.DataBind();
            TextBox3.Text = "";
            TextBox4.Text = "";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            int bid = Int32.Parse(TextBox3.Text);
            string uid = TextBox4.Text;
            Take tk = db.Takes.Where(s => (s.user_id ).Equals( uid) && s.book_id == bid).FirstOrDefault<Take>();
            if (tk == null)
            {
                Label5.Text = "No such Book issued";
                Label5.ForeColor = System.Drawing.Color.ForestGreen;
                return;
            }
            DateTime dt = DateTime.Now;
            if (tk.due_date < dt)
            {
                int  days = (int)(dt-tk.due_date).TotalDays;
                Label6.Text = "You are" + days + "days late penalty will be charged";
                Label6.ForeColor = System.Drawing.Color.ForestGreen;
                Penalty p = new Penalty();
                p.penalty_subject = "Book Submission";
                p.penalty_descrip = "You are" + days + "days late for book submission";
                p.penalty_money = 10 * days;
                p.user_id = uid;
                p.penalty_date = DateTime.Now;
                db.Penalties.Add(p);
                db.SaveChanges();
            }
            tk.issue_date = DateTime.Now;
            tk.due_date = DateTime.Now.AddDays(21);
            db.SaveChanges();
            Label5.Text = "Book successfully Renewed";
            GridView1.DataBind();
            GridView3.DataBind();
            TextBox3.Text = "";
            TextBox4.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            /* SqlConnection conn;
             SqlDataReader sr;
             SqlCommand cmd = new SqlCommand();
             String str;
             str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
             conn = new SqlConnection(str);
             cmd.Connection = conn;
             conn.Open();

             cmd.CommandText = "select * from Library where book_name=@book1";
             cmd.Parameters.AddWithValue("@book1", TextBox1.Text);
             sr = cmd.ExecuteReader();
             sr.Read();

             Label8.Text = sr["book_id"].ToString();
             Label10.Text = sr["book_name"].ToString();
             sr.Close();
             conn.Close();*/
            GridView4.Visible = false;
            GridView1.DataBind();
            GridView2.DataBind();
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
                "name like @SearchText + '%'";
                cmd.Parameters.AddWithValue("@SearchText", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> Names = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    // Label2.Text = "hi";
                    while (sdr.Read())
                    {

                        Names.Add(sdr["name"].ToString());
                    }
                    sdr.Close();
                }
               
                conn.Close();
                return Names;

                //}
            }
        }
             [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod()]

        public static List<string> GetBooks(string prefixText, int count)
        {
            // using (SqlConnection conn = new SqlConnection())
            //{
            SqlConnection conn;
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(str);
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select book_name from Library where " +
                "book_name like @SearchText1 + '%'";
                cmd.Parameters.AddWithValue("@SearchText1", prefixText);
                cmd.Connection = conn;
                conn.Open();
                List<string> Names1 = new List<string>();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    // Label2.Text = "hi";
                    while (sdr.Read())
                    {

                        Names1.Add(sdr["book_name"].ToString());
                    }
                }
                conn.Close();
                return Names1;
            }
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn;
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(str);
            SqlDataReader sr;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            conn.Open();
            cmd.CommandText = "select x.user_id,x.name from UserDb x inner join Takes y on x.user_id=y.user_id where y.book_id=@bookid";
            cmd.Parameters.AddWithValue("@bookid", GridView1.SelectedRow.Cells[1].Text);
            sr = cmd.ExecuteReader();

            GridView4.DataSource = sr;
            GridView4.DataBind();
            sr.Close();
            conn.Close();
            GridView4.Visible = true;
        }

       /* protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            String x = TextBox1.Text;
            if (TextBox1.Text.Length != 0)
            {
                e.Command.Parameters["@book1"].Value = x;

            }
            else
            {
                e.Command.Parameters["@book1"].Value = "default";
            }
        }*/
    }
}