using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.Configuration;
namespace ProjectHMS
{
    public partial class ForgotPasssword : System.Web.UI.Page
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
            int f = 0;
            string uname = "";
            string pwd = "";
            SqlConnection conn;
            SqlDataReader sr;
            SqlCommand cmd = new SqlCommand();
            String str;
            str = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            conn = new SqlConnection(str);
            conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = "select user_id from UserDb where email=@email;";
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            sr = cmd.ExecuteReader();
            if (sr.Read())
            {
                uname = sr["user_id"].ToString();
            }
            else
            {
                Label2.Text = "Your email not matched";
                Label2.ForeColor = System.Drawing.Color.Firebrick;
                f = 1;
            }
                sr.Close();

            if (f == 0)
            {
                cmd.CommandText = "select password from LoginDb where user_id=@uname;";
                cmd.Parameters.AddWithValue("@uname", uname);
                sr = cmd.ExecuteReader();
                sr.Read();
                pwd = sr["password"].ToString();
                sr.Close();
                conn.Close();

              //  if (!string.IsNullOrEmpty(pwd))
                //{
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("neelshah1102@gmail.com");
                    msg.To.Add(TextBox1.Text);
                    msg.Subject = " Recover your Password";
                    msg.Body = ("Your Username is:" + uname + "<br/><br/>" + "Your Password is:" + pwd);
                    msg.IsBodyHtml = true;

                    SmtpClient smt = new SmtpClient();
                    smt.Host = "smtp.gmail.com";
                    System.Net.NetworkCredential ntwd = new NetworkCredential();
                    ntwd.UserName = "neelshah1102@gmail.com"; //Your Email ID  
                    ntwd.Password = "xxxx"; // Your Password  
                    smt.UseDefaultCredentials = true;
                    smt.Credentials = ntwd;
                    smt.Port = 587;
                    smt.EnableSsl = true;
                    smt.Send(msg);
                    Label2.Text = "Username and Password Sent Successfully";
                    Label2.ForeColor = System.Drawing.Color.ForestGreen;
               // }
                //else
                //{
                   // Label2.Text = "Invalid Email";
                  //  Label2.ForeColor = System.Drawing.Color.ForestGreen;
                //}
            }
        }
    }
}
