using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class manageuser1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                ListView1.Visible = true;
                ListView2.Visible = false;
                GridView2.Visible = false;
            }
            if (RadioButtonList1.SelectedIndex == 1)
            {
                ListView2.Visible = true;
                ListView1.Visible = false;
                GridView2.Visible = true;
            }
        }
    }
}