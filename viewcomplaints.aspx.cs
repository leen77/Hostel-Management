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
    public partial class viewcomplaints1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // ListBox1.Items.Clear();
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
            if (IsPostBack)
            {
                GridView1.DataBind();
            }
            /* Database1Entities19 db = new Database1Entities19();
              var abc = from s in db.Complaints join t in db.UserDbs on s.user_id equals t.user_id select new { s.user_id, t.name, s.complaint_subject, s.complaint_date };
              GridView1.DataSource = abc;
              GridView1.DataBind();  */
            /* SqlConnection conn;
             //SqlDataAdapter da;
             // DataSet ds = new DataSet();
             SqlCommand cmd = new SqlCommand();
             SqlDataReader sr;
             string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
             conn = new SqlConnection(constr);

             cmd.Connection = conn;
             cmd.CommandText = "select x.user_id,x.name,y.complaint_subject,y.complaint_date from UserDb x inner join Complaint y on x.user_id = y.user_id";


             conn.Open();
             sr = cmd.ExecuteReader();

             GridView1.DataSource = sr;
             GridView1.DataBind();
             sr.Close();
             conn.Close();*/

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //DetailsView1.Visible = true;
           ListBox1.Visible = true;
        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          //  ListBox1.Items.Clear();
           ListBox1.Visible = false;
        }

     

       
    }
}