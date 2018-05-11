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
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //  HttpCookie cookie1 = Request.Cookies["extension"];
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");

            Image1.ImageUrl = "Upload\\" + (string)Session["user"]+".jpg";
                /*+ cookie1["exte"]*/
            SqlConnection conn;
            SqlCommand cmd=new SqlCommand();
            SqlDataReader sr;

            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(constr);

            cmd.Connection = conn;
            cmd.CommandText = "select * from UserDb where user_id= @user1";
            cmd.Parameters.AddWithValue("@user1", (string)Session["user"]);
            conn.Open();
            sr = cmd.ExecuteReader();
            sr.Read();
            Label9.Text = sr["name"].ToString();
            Label10.Text = sr["dob"].ToString();
            Label11.Text = sr["email"].ToString();
            Label12.Text = sr["mobileno"].ToString();
            Label13.Text = sr["address"].ToString();
            Label14.Text = sr["city"].ToString();
            Label15.Text = sr["state"].ToString();
            Label18.Text = sr["sem"].ToString();
            Label19.Text = sr["branch"].ToString();

            sr.Close();
            conn.Close();


        }

    }
}