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
    public partial class ViewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
            SqlConnection conn;
            SqlCommand cmd = new SqlCommand();
            SqlDataReader sr;
            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(constr);
            cmd.Connection = conn;
            conn.Open();
            cmd.CommandText = "select x.book_name,x.book_author,x.isbn_no,y.issue_date,y.due_date from Library x inner join Takes y on x.book_id =y.book_id where user_id=@user1";
            cmd.Parameters.AddWithValue("@user1", (string)Session["user"]);
            sr = cmd.ExecuteReader();
            GridView1.DataSource = sr;
            GridView1.DataBind();
            sr.Close();
            conn.Close();

            Label1.Text = "Must be Renewed or Returned Within  due date otherwise Penalty will be charged";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}