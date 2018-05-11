using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class Index2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Register1.aspx");
        }

        protected void btn1_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Login1.aspx");
        }
    }
}