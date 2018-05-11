using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
namespace ProjectHMS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

            SqlConnection myconn = new SqlConnection();
            string constring = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            myconn.ConnectionString = constring;
            myconn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = myconn;
            cmd.CommandText = "select * from LoginDb where  user_id= '" + Login1.UserName + "'";
            SqlDataReader rdr;
            rdr = cmd.ExecuteReader();
            rdr.Read();
            string correctPass = rdr["password"].ToString();
            int role =(int) rdr["roleid"];

            if (Login1.Password == correctPass && role == 1)
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                Session["user"] = Login1.UserName;
                Response.Redirect("UserHome.aspx");
            }

           else if (Login1.Password == correctPass && role == 2)
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                Session["user"] = Login1.UserName;
                Response.Redirect("AdminHome.aspx");
            }

           else if (Login1.Password == correctPass && role == 3)
            {
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);
                Session["user"] = Login1.UserName;
                Response.Redirect("canteenexpense.aspx");
            }

        }
    }
}

