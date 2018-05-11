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
    public partial class ManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

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
    }
    }