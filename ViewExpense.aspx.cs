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
    public partial class ViewExpense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["user"] != null)
            { }

            else
                Response.Redirect("Index2.aspx");
            decimal a1, a2, a4, a3;
            SqlConnection conn;
            //SqlDataAdapter da;
           // DataSet ds = new DataSet();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader sr,sr1;
            string constr = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            conn = new SqlConnection(constr);
        
            cmd.Connection = conn;
            cmd.CommandText = "select total_items,laundry_money,laundry_date from Laundry where user_id= @user1 and laundry_status=@status";
            cmd.Parameters.AddWithValue("@user1", (string)Session["user"]);
            cmd.Parameters.AddWithValue("@status", "unpaid");



            conn.Open();
            sr = cmd.ExecuteReader();

           GridView1.DataSource = sr;
            GridView1.DataBind();

            if (!sr.HasRows) {
                a1 = 0;
                Label2.Text = 0.ToString()+"/-Rs";

                sr.Close();
                conn.Close(); }

            else {
                //   conn.Open();
                sr.Close();
                cmd.CommandText = "select sum(laundry_money) as money from Laundry where user_id=@user2 ";
                cmd.Parameters.AddWithValue("@user2", (string)Session["user"]);
                sr = cmd.ExecuteReader();
                sr.Read();
                //a1 = 0;
                // a1 = (int)sr["money"];
                //  else
                //{
                Label2.Text = sr["money"].ToString()+"/-Rs";
                a1 = (decimal)sr["money"];
                //}
                sr.Close();
                conn.Close();
            }
            conn.Open();
            cmd.CommandText = "select x.item_name,x.item_money,y.quantity,y.canteen_date from Canteen x inner join User_Canteen y on x.item_id =y.item_id where user_id=@user3 and y.canteen_status=@status1";
            cmd.Parameters.AddWithValue("@user3", (string)Session["user"]);
            cmd.Parameters.AddWithValue("@status1", "unpaid");
            sr = cmd.ExecuteReader();
            GridView5.DataSource = sr;
            GridView5.DataBind();
            if (!sr.HasRows) {
                a2 = 0;
                Label6.Text = 0.ToString() + "/-Rs";
                sr.Close();
                conn.Close();
            }
            else {
                // conn.Open();
                sr.Close();
                cmd.CommandText = "select sum(x.item_money * y.quantity) as money from Canteen x inner join User_Canteen y on x.item_id =y.item_id   where user_id=@user4 ";
                cmd.Parameters.AddWithValue("@user4", (string)Session["user"]);
                sr = cmd.ExecuteReader();
                sr.Read();
                    //a1 = 0;
                // a1 = (int)sr["money"];
             //   else
               // {
                    Label6.Text = sr["money"].ToString()+"/-Rs";
                    a2 = (decimal)sr["money"];
                //}
                sr.Close();
                conn.Close();
            }
            conn.Open();
         
            cmd.CommandText = "select penalty_subject,penalty_descrip,penalty_money,penalty_date from Penalty where user_id= @user5 and penalty_status=@status2";
            cmd.Parameters.AddWithValue("@user5", (string)Session["user"]);
            cmd.Parameters.AddWithValue("@status2", "unpaid");
            sr = cmd.ExecuteReader();
            GridView2.DataSource = sr;
            GridView2.DataBind();
            
            if (!sr.HasRows)
            {
                a3 = 0;
                Label4.Text = 0.ToString() + "/-Rs";
                sr.Close();
                conn.Close();
            }

            else
            {
                //   conn.Close();
                // conn.Open();
                sr.Close();
                cmd.CommandText = "select sum(penalty_money) as money from Penalty where user_id=@user6 ";
                cmd.Parameters.AddWithValue("@user6", (string)Session["user"]);
                sr = cmd.ExecuteReader();
                sr.Read();
                //a1 = 0;
                // a1 = (int)sr["money"];
                //  else
                //{
             //   Label17.Text = "here";
                Label4.Text = sr["money"].ToString() + "/-Rs";
                a3 = (decimal)sr["money"];
                //}
                sr.Close();
                conn.Close();
            }

            conn.Open();
            cmd.CommandText = "select expense_descrip,expense_money,expense_date from Expense where user_id=@user7 and expense_status=@status3";
            cmd.Parameters.AddWithValue("@user7", (string)Session["user"]);
            cmd.Parameters.AddWithValue("@status3", "unpaid");
            sr = cmd.ExecuteReader();
            GridView3.DataSource = sr;
            GridView3.DataBind();
            if (!sr.HasRows)
            {
                a4 = 0;
                Label8.Text = 0.ToString() + "/-Rs";
                sr.Close();
                conn.Close();
            }

            else
            {
                //    conn.Open();
                sr.Close();
                cmd.CommandText = "select sum(expense_money) as money from Expense where user_id=@user8 ";
                cmd.Parameters.AddWithValue("@user8", (string)Session["user"]);
                sr = cmd.ExecuteReader();
                sr.Read();
                //a1 = 0;
                // a1 = (int)sr["money"];
                //  else
                //{
                Label8.Text = sr["money"].ToString()+"/-Rs";
                a4 = (decimal)sr["money"];
                //}
                sr.Close();
                conn.Close();
            }
          decimal a = a1 + a2 + a3 + a4;
          //  int a = Int32.Parse(Label2.Text) + Int32.Parse(Label4.Text) + Int32.Parse(Label6.Text) + Int32.Parse(Label8.Text);
           Label10.Text = a.ToString()+"/- Rs";
            Label11.Text = "Pay your Expenses Regularly on first day of next Month to avoid Penalty ";
            Label11.ForeColor = System.Drawing.Color.Firebrick;
        }

        
    }
}
