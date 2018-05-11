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
    public partial class DisplayMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
            int f1 = 0, f2 = 0, f3 = 0;
            SqlConnection conn;
            //SqlDataAdapter da;
            // DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader sr;
            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(constr);

            cmd.Connection = conn;
            cmd.CommandText = "select * from MessMenu where date = @date1 ";
            cmd.Parameters.AddWithValue("@date1", DateTime.Today);

            Label4.Text = DateTime.Now.ToString("dd/MM/yyyy");
            conn.Open();
            sr = cmd.ExecuteReader();
            while(sr.Read())
            {
                if(((string)sr["menu_type"]).Equals("Breakfast"))
                {
                    TextBox1.Text = (string)sr["menu"];
                    f1++;
                }

              else if (((string)sr["menu_type"]).Equals("Lunch"))
                {
                    TextBox2.Text = (string)sr["menu"];
                    f2++;
                }

                else if (((string)sr["menu_type"]).Equals("Dinner"))
                {
                    TextBox3.Text = (string)sr["menu"];
                    f3++;
                }
            }

            if (f1 == 0)
                TextBox1.Text = "Please Wait for sometime";

             if (f2 == 0)
                TextBox2.Text = "Please Wait for sometime";

             if (f3 == 0)
                TextBox3.Text = "Please Wait for sometime";

        }
    }
}