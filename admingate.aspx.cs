using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.Configuration;

namespace ProjectHMS
{
    public partial class admingate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
               { }// Label1.Text = "Welcome  " + (string)Session["user"];

            else
                Response.Redirect("Index2.aspx");

            Label2.Text = " ";
            int rows = GridView2.Rows.Count;
            if (rows == 0)
                Label2.Text = "No records";
            Label1.Text = " ";
            DateTime dt1 = DateTime.Now.AddDays(-1);
            Database1Entities22 db = new Database1Entities22();
            var gt = from x in db.GatePasses where x.gate_date < dt1 select x;
            GatePass gate = new GatePass();
            foreach(var s in gt)
            {
                gate = s;
                db.GatePasses.Remove(gate);
                
            }
            db.SaveChanges();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String email1=" ";
            Database1Entities22 db = new Database1Entities22();
            int gid =(int)GridView2.SelectedValue;
            var x = from a in db.GatePasses from b in db.UserDbs where a.gate_id == gid && a.user_id == b.user_id select b;
            foreach (var s in x)
            {
                email1 = s.email;
            }
            GatePass gt = db.GatePasses.Where(s => s.gate_id == gid).FirstOrDefault<GatePass>();
            db.GatePasses.Remove(gt);
            db.SaveChanges();
            GridView2.DataBind();
            int f = 0;
            SqlConnection conn;
            SqlDataReader sr;
            SqlCommand cmd = new SqlCommand();
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn = new SqlConnection(str);
            /*  conn.Open();
              cmd.Connection = conn;
              cmd.CommandText = "select email from UserDb where user_id=@user1;";
              cmd.Parameters.AddWithValue("@user1", GridView2.SelectedRow.Cells[0]);
              sr = cmd.ExecuteReader();
              sr.Read();

                  email1 = sr["email"].ToString();
              gate1 = (int)sr["gate_id"];

              sr.Close();*/
           




                //  if (!string.IsNullOrEmpty(pwd))
                //{
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("neelshah1102@gmail.com");
                msg.To.Add(email1);
                msg.Subject = "GatePass ";
                msg.Body = ("Your GatePass Id is: " + gid.ToString());
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "neelshah1102@gmail.com"; //Your Email ID  
                ntwd.Password = "liamg$$leen$$77"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
            Label1.Text = "Mail sent";
            //  Label2.Text = "Username and Password Sent Successfully";
            //Label2.ForeColor = System.Drawing.Color.ForestGreen;
            // }
            //else
            //{
            // Label2.Text = "Invalid Email";
            //  Label2.ForeColor = System.Drawing.Color.ForestGreen;

            int rows = GridView2.Rows.Count;
            if (rows == 0)
                Label2.Text = "No records";
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String email1 = " ";
            Database1Entities22 db = new Database1Entities22();
            int gid = (int)GridView2.SelectedValue;
            var x = from a in db.GatePasses from b in db.UserDbs where a.gate_id == gid && a.user_id == b.user_id select b;
            foreach (var s in x)
            {
                email1 = s.email;
            }
            GatePass gt = db.GatePasses.Where(s => s.gate_id == gid).FirstOrDefault<GatePass>();
            db.GatePasses.Remove(gt);
            db.SaveChanges();
            GridView2.DataBind();
            int f = 0;
            SqlConnection conn;
            SqlDataReader sr;
            SqlCommand cmd = new SqlCommand();
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn = new SqlConnection(str);
            /*  conn.Open();
              cmd.Connection = conn;
              cmd.CommandText = "select email from UserDb where user_id=@user1;";
              cmd.Parameters.AddWithValue("@user1", GridView2.SelectedRow.Cells[0]);
              sr = cmd.ExecuteReader();
              sr.Read();

                  email1 = sr["email"].ToString();
              gate1 = (int)sr["gate_id"];

              sr.Close();*/





            //  if (!string.IsNullOrEmpty(pwd))
            //{
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("neelshah1102@gmail.com");
            msg.To.Add(email1);
            msg.Subject = "GatePass ";
            msg.Body = ("Your GatePass Request is Rejected");
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new NetworkCredential();
            ntwd.UserName = "neelshah1102@gmail.com"; //Your Email ID  
            ntwd.Password = "liamg$$leen$$77"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            Label1.Text = "Mail sent";
            //  Label2.Text = "Username and Password Sent Successfully";
            //Label2.ForeColor = System.Drawing.Color.ForestGreen;
            // }
            //else
            //{
            // Label2.Text = "Invalid Email";
            //  Label2.ForeColor = System.Drawing.Color.ForestGreen;

            int rows = GridView2.Rows.Count;
            if (rows == 0)
                Label2.Text = "No records";
            //}
        }
    }

   
    }
