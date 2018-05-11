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
    public partial class viewstudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Button2.Visible = false;
            ListBox1.Items.Clear();
            Label2.Visible = false;
            Label3.Visible = false;
            Label27.Visible = false;
            Label28.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            ListBox1.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label19.Visible = false;
            Label20.Visible = false;
            Label21.Visible = false;
            Label22.Visible = false;
            Label23.Visible = false;
            Label24.Visible = false;
            Label25.Visible = false;
            Label26.Visible = false;
            Label29.Visible = false;
            Label30.Visible = false;
            //Label11.Visible = false;
            //Label12.Visible = false;


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label27.Visible = true;
            Label28.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Label13.Visible = true;
            Label14.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label12.Visible = true;
            ListBox1.Visible = true;

            Label15.Visible = true;
            Label16.Visible = true;
            Label17.Visible = true;
            Label18.Visible = true;
            Label19.Visible = true;
            Label20.Visible = true;
            Label21.Visible = true;
            Label22.Visible = true;
            Label23.Visible = true;
            Label24.Visible = true;
            Label25.Visible = true;
            Label26.Visible = true;
            Label29.Visible = true;
            Label30.Visible = true;
            String uid = GridView1.SelectedRow.Cells[1].Text;
           // Label15.Text = uid.ToString();
            Database1Entities22 db = new Database1Entities22();
        //    UserDb user = db.UserDbs.Where(s => s.user_id==uid).FirstOrDefault();
            UserDb user = db.UserDbs.Where(s => (s.user_id).Equals(uid)).FirstOrDefault<UserDb>();
            Allocated alloc = db.Allocateds.Where(s => s.user_id == uid).FirstOrDefault<Allocated>();
            Room room = db.Rooms.Where(s => s.room_no == alloc.room_no).FirstOrDefault<Room>();
            var laundry = from s in db.Laundries where s.user_id.Equals(uid) select s;
            var expense = from s in db.Expenses where s.user_id.Equals(uid) select s;
            var penalty = from s in db.Penalties where s.user_id.Equals(uid) select s;
            var canteen = from s1 in db.User_Canteen join s2 in db.Canteens on s1.item_id equals s2.item_id where s1.user_id.Equals(uid) select new {quan= s1.quantity, price=s2.item_money };

            var books = from s in db.Takes from t in db.Libraries where s.book_id == t.book_id && s.user_id == uid select t;
            decimal lbill = 0;
            decimal ebill = 0;
            decimal pbill = 0;
            decimal cbill = 0;
            foreach (var money in penalty)
            {
                pbill += money.penalty_money;
            }
            foreach (var money in expense)
            {
                ebill += money.expense_money;
            }
            foreach (var money in laundry)
            {
                lbill += money.laundry_money;
            }

            foreach (var money in canteen)
            {
                cbill += (money.quan*money.price);
            }
            Label15.Text = user.user_id.ToString();
            Label16.Text = user.name;
            Label17.Text = user.dob;
            Label18.Text = user.address;
            Label19.Text = user.mobileno.ToString();
            Label20.Text = user.email;
            Label21.Text = alloc.room_no.ToString() ;
            Label22.Text = room.floor.ToString();
            Label23.Text = lbill.ToString();
            Label24.Text = ebill.ToString();
            Label25.Text = pbill.ToString();
            Label26.Text = cbill.ToString();
            Label29.Text = user.sem.ToString();
            Label30.Text = user.branch.ToString();
            foreach (var book in books)
            {
                ListBox1.Items.Add(book.book_name);
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Database1Entities22 db = new Database1Entities22();
            string uid = (GridView1.SelectedRow.Cells[1].Text);
            var abc = from s in db.Allocateds from t in db.Rooms where s.user_id.Equals(uid) && s.room_no == t.room_no select t;
            foreach(var x in abc)
            {
                x.slots_available = x.slots_available + 1;
            } 
          //  Room rm = db.Rooms.Where(s => s.user_id.Equals(uid) && s.room_no == t.room_no).FirstOrDefault<UserDb>();
            UserDb user = db.UserDbs.Where(s => (s.user_id).Equals(uid)).FirstOrDefault<UserDb>();
            db.UserDbs.Remove(user);
            db.SaveChanges();
            Label31.Text = "User checked Out and Room slot is available";
            GridView1.DataBind();
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
                 }
                conn.Close();
                return Names;

                //}
             }
        }
            /*  protected void Button2_Click(object sender, EventArgs e)
              {
                  int uid = Int32.Parse(GridView1.SelectedRow.Cells[1].Text);
                  Database1Entities6 db = new Database1Entities6();
                  User user = db.Users.Where(s => s.user_id == uid).FirstOrDefault<User>();
                  db.Users.Remove(user);
                  db.SaveChanges();
                  Response.Redirect("viewstudent.aspx");
              }*/
        }
 }
