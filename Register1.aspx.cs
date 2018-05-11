using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Web.Configuration;


namespace ProjectHMS
{
    public partial class Register : System.Web.UI.Page
    {
        int f = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            f = 0;

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Label46.Text = " ";
            Label4.Text = " ";
            Label35.Text = " ";
            Label36.Text = " ";
            Label37.Text = " ";

            SqlConnection conn;
            SqlDataReader sr;
            SqlCommand cmd = new SqlCommand();
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            int f2 = 0;

            conn = new SqlConnection(str);
            cmd.Connection = conn;
            conn.Open();
            cmd.CommandText = "select slots_available from Room ";
            sr = cmd.ExecuteReader();

            while (sr.Read())
            {
                if ((int)sr["slots_available"] != 0)

                {
                    Wizard1.Visible = true;
                    f2 = 1;
                    
                    break;

                }
            }
            if (f2 == 0)
                Label47.Text = "Hostel is Full,Apply  Next Sem!!!!!!!";

            else
            {
                Label48.Visible = true;
                sr.Close();
                conn.Close();

                conn = new SqlConnection(str);
                cmd.Connection = conn;
                conn.Open();
                cmd.CommandText = "select user_id from UserDb";
                sr = cmd.ExecuteReader();
                while (sr.Read())
                {
                    if ((sr["user_id"].ToString()).Equals(TextBox1.Text))
                    {

                        f = 1;
                        break;
                    }
                }
                sr.Close();
                conn.Close();


                if (!IsPostBack)
                {
                    DropDownList6.Items.Clear();



                    Database1Entities22 db = new Database1Entities22();
                    //   Hostel ho = new Hostel();
                    Hostel ho1 = db.Hostels.SingleOrDefault();
                    int floor = ho1.no_of_floors;

                    for (int i = 1; i <= floor; i++)
                        DropDownList6.Items.Add(i.ToString());
                }

            }

        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            HttpCookie cookie1 = new HttpCookie("extension");
            //   int f = 0;
            int slots = 0;
            if (f == 0)
            {
                SqlConnection conn;
                SqlDataReader sr;
                SqlCommand cmd = new SqlCommand();
                String str;
                str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(str);

                /*   Database1Entities22 db1 = new Database1Entities22();
                   UserDb u1 = new UserDb();
                   // String imgname;
                   u1.user_id = TextBox1.Text;
                   u1.name = TextBox2.Text + " " + TextBox3.Text;
                   u1.dob = DropDownList8.SelectedItem.Text.ToString() + " " + DropDownList9.SelectedItem.Text.ToString() + " " + DropDownList10.SelectedItem.Text.ToString();
                   u1.mobileno = Decimal.Parse(TextBox9.Text);
                   u1.email = TextBox5.Text;
                   u1.address = TextBox15.Text;
                   u1.city = TextBox6.Text;
                   u1.state = TextBox7.Text;
                   u1.pcode = Decimal.Parse(TextBox8.Text);
                   u1.sem = Int32.Parse(TextBox4.Text);
                   u1.branch = TextBox17.Text;



                   db1.UserDbs.Add(u1);


                   db1.SaveChanges();

                   Database1Entities22 db2 = new Database1Entities22();
                   Allocated a = new Allocated();
                   a.user_id = TextBox1.Text; //userid into Allocate table


                   conn.Open();
                   cmd.Connection = conn;
                   cmd.CommandText = "select * from Room where room_no=@number;";
                   //  String s = ListBox1.SelectedItem.Value;
                   cmd.Parameters.AddWithValue("@number", Int32.Parse(ListBox1.SelectedItem.Text.Substring(6)));
                   sr = cmd.ExecuteReader();
                   while (sr.Read())
                   {
                       a.room_no = (int)sr["room_no"];
                   }//room no into Allocate table
                   db2.Allocateds.Add(a);
                   db2.SaveChanges();

                   sr.Close();
                   conn.Close();

                   Database1Entities22 db3 = new Database1Entities22();
                   LoginDb l = new LoginDb();
                   l.user_id = TextBox1.Text;
                   l.password = TextBox11.Text;
                   int x = 1;
                   l.roleid = x;
                  // l.secque = TextBox13.Text;

                   //l.secans = TextBox14.Text;
                   db3.LoginDbs.Add(l);
                   db3.SaveChanges();


                   conn.Open();
                   cmd.Connection = conn;
                   cmd.CommandText = "select * from Room where room_no=@room;";
                   cmd.Parameters.AddWithValue("@room", ListBox1.SelectedItem.Text.Substring(6));

                   sr = cmd.ExecuteReader();
                   sr.Read();

                   slots = (int)sr["slots_available"];
                   slots = slots - 1;
                   sr.Close();
                   cmd.CommandText = "update Room set slots_available=@slot where room_no=@room1";

                   cmd.Parameters.AddWithValue("@room1", ListBox1.SelectedItem.Text.Substring(6));
                   cmd.Parameters.AddWithValue("@slot", slots);
                   cmd.ExecuteNonQuery();
                   conn.Close();*/

                if (FileUpload1.HasFile)

                {

                    string ext = System.IO.Path.GetExtension(FileUpload1.FileName);
                    cookie1["exte"] = ext;
                    Response.Cookies.Add(cookie1);

                    if (ext == ".jpg")
                    {
                        if (FileUpload1.PostedFile.ContentLength > 2000000)
                        {
                            Label39.Text = "Image size is greater than 2 MB......";
                            Label39.ForeColor = System.Drawing.Color.Firebrick;
                        }
                        else
                        {
                            FileUpload1.PostedFile.SaveAs(Server.MapPath("Upload\\" + TextBox1.Text + ext));

                            Database1Entities22 db1 = new Database1Entities22();
                            UserDb u1 = new UserDb();
                            // String imgname;
                            u1.user_id = TextBox1.Text;
                            u1.name = TextBox2.Text + " " + TextBox3.Text;
                            u1.dob = DropDownList8.SelectedItem.Text.ToString() + " " + DropDownList9.SelectedItem.Text.ToString() + " " + DropDownList10.SelectedItem.Text.ToString();
                            u1.mobileno = Decimal.Parse(TextBox9.Text);
                            u1.email = TextBox5.Text;
                            u1.address = TextBox15.Text;
                            u1.city = TextBox6.Text;
                            u1.state = TextBox7.Text;
                            u1.pcode = Decimal.Parse(TextBox8.Text);
                            u1.sem = Int32.Parse(TextBox4.Text);
                            u1.branch = TextBox17.Text;



                            db1.UserDbs.Add(u1);


                            db1.SaveChanges();

                            Database1Entities22 db2 = new Database1Entities22();
                            Allocated a = new Allocated();
                            a.user_id = TextBox1.Text; //userid into Allocate table


                            conn.Open();
                            cmd.Connection = conn;
                            cmd.CommandText = "select * from Room where room_no=@number;";
                            //  String s = ListBox1.SelectedItem.Value;
                            cmd.Parameters.AddWithValue("@number", Int32.Parse(ListBox1.SelectedItem.Text.Substring(6)));
                            sr = cmd.ExecuteReader();
                            while (sr.Read())
                            {
                                a.room_no = (int)sr["room_no"];
                            }//room no into Allocate table
                            db2.Allocateds.Add(a);
                            db2.SaveChanges();

                            sr.Close();
                            conn.Close();

                            Database1Entities22 db3 = new Database1Entities22();
                            LoginDb l = new LoginDb();
                            l.user_id = TextBox1.Text;
                            l.password = TextBox11.Text;
                            int x = 1;
                            l.roleid = x;
                            // l.secque = TextBox13.Text;

                            //l.secans = TextBox14.Text;
                            db3.LoginDbs.Add(l);
                            db3.SaveChanges();


                            conn.Open();
                            cmd.Connection = conn;
                            cmd.CommandText = "select * from Room where room_no=@room;";
                            cmd.Parameters.AddWithValue("@room", ListBox1.SelectedItem.Text.Substring(6));

                            sr = cmd.ExecuteReader();
                            sr.Read();

                            slots = (int)sr["slots_available"];
                            slots = slots - 1;
                            sr.Close();
                            cmd.CommandText = "update Room set slots_available=@slot where room_no=@room1";

                            cmd.Parameters.AddWithValue("@room1", ListBox1.SelectedItem.Text.Substring(6));
                            cmd.Parameters.AddWithValue("@slot", slots);
                            cmd.ExecuteNonQuery();
                            conn.Close();

                            Response.Redirect("Register2.aspx");
                        }
                    }

                    else
                    {
                        Label39.Text = "Please Select JPG Image file";
                        Label39.ForeColor = System.Drawing.Color.Firebrick;
                    }
                }

                else
                {
                    Label39.Text = "Select Image";
                    Label39.ForeColor = System.Drawing.Color.Firebrick;
                }
            }

            else
            {
                string message = "Already Registered.";
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append("<script type = 'text/javascript'>");
                sb.Append("window.onload=function(){");
                sb.Append("alert('");
                sb.Append(message);
                sb.Append("')};");
                sb.Append("</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                //Label46.Text = "Already Registered";
                //Label46.ForeColor = System.Drawing.Color.ForestGreen;
            }

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label4.Text = " ";
            Label35.Text = " ";
            Label36.Text = " ";

            ListBox1.Items.Clear();
            SqlConnection conn;
            SqlDataReader sr1;
            SqlCommand cmd = new SqlCommand();
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn = new SqlConnection(str);
            conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = "select * from Room where floor=@floor and room_capacity=@capacity and slots_available!=@slotavailable";
            cmd.Parameters.AddWithValue("@floor", DropDownList6.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@capacity", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@slotavailable", 0);
            sr1 = cmd.ExecuteReader();

            while (sr1.Read())
            {

                ListBox1.Items.Add("Roomno" + sr1["room_no"]);

            }
            sr1.Close();
            conn.Close();

            if (ListBox1.Items.Count == 0)
            {
                Label35.Text = "No Rooms on the selected floor.Please choose another floor";
                Label35.ForeColor = System.Drawing.Color.Firebrick;
            }
            else
            {
                Label35.Text = "Select Room from Roomlist if slots are available";
                Label35.ForeColor = System.Drawing.Color.ForestGreen;

            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int f2 = 0;
            Label40.Text = " ";
            //Label35.Text = " ";
            Label45.Text = " ";
            ListBox3.Visible = true;
            ListBox3.Items.Clear();

            int s = 0;
            SqlConnection conn;
            SqlDataReader sr2;
            SqlCommand cmd = new SqlCommand();
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn = new SqlConnection(str);
            conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = "select * from Room where room_no=@number;";
            //  String s = ListBox1.SelectedItem.Value;
            cmd.Parameters.AddWithValue("@number", Int32.Parse(ListBox1.SelectedItem.Text.Substring(6)));

            sr2 = cmd.ExecuteReader();
            sr2.Read();


            Label4.Text = sr2["slots_available"].ToString();
            s = (int)sr2["slots_available"];




            if (s == 0)
            {
                Label40.Text = "No slots available.Please Select Another Room";
                Label40.ForeColor = System.Drawing.Color.Firebrick;
                ListBox1.SelectedItem.Enabled = false;
            }
            else
            {
                Label36.Text = "You have to pay " + sr2["room_price"].ToString() + " for the Room No  " + sr2["room_no"];
                Label26.Text = sr2["room_price"].ToString();
            }
            Label45.Text = "Other Students In RoomNo " + sr2["room_no"].ToString() + " Are ";
            Label40.ForeColor = System.Drawing.Color.ForestGreen;
            sr2.Close();

            conn.Close();

            conn.Open();
            cmd.CommandText = "select x.name,x.branch,x.sem from UserDb x inner join Allocated y on x.user_id=y.user_id where room_no=@number1;";
            //  String s = ListBox1.SelectedItem.Value;
            cmd.Parameters.AddWithValue("@number1", Int32.Parse(ListBox1.SelectedItem.Text.Substring(6)));
            sr2 = cmd.ExecuteReader();
            while (sr2.Read())
            {
                f2 = 1;
                string str1 = (string)sr2["name"];
                string str2 = (string)sr2["branch"];
                int a = (int)sr2["sem"];
                string str3 = a.ToString();
                string str4 = str1 + " (" + str2 + " - " + str3 + " )";
                ListBox3.Items.Add(str4);/*(string)sr2["name"] + "(" + (string)sr2["branch"] + "-" + (int)sr2["sem"] + ")");*/
            }
            sr2.Close();
            conn.Close();
            if (f2 == 0)
            {
                Label45.Text = "No other students in room";
                ListBox3.Visible = false;
            }
            else
                ListBox3.Visible = true;

        }

        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label4.Text = " ";
        }

        protected void DropDownList7_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label37.Text = "Your Payment is Done";
        }
    
    }
}