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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label4.Text = " ";
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Change_Click(object sender, EventArgs e)
        {
            Database1Entities22 db = new Database1Entities22();
            string pass = TextBox1.Text;
            //  s.Name = TextBox1.Text;
            // s.sem = Int32.Parse(TextBox2.Text);
            LoginDb s1 = db.LoginDbs.Where(s => s.password == pass).FirstOrDefault<LoginDb>();
            if (s1 == null)
            {
                Label4.Text = "Your Old Password is Incorrect";
                Label4.ForeColor = System.Drawing.Color.Firebrick;
            }
            else
            {
                LoginDb s2 = db.LoginDbs.Where(s => (s.password).Equals(pass)).FirstOrDefault<LoginDb>();
                s2.password = TextBox2.Text;
              //  db.LoginDbs.Add(s2);
                db.SaveChanges();
                Label4.Text = "Password successfully changed";
                Label4.ForeColor = System.Drawing.Color.ForestGreen;
            }

            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
        }
    }
    }
