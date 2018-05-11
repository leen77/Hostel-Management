using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectHMS
{
    public partial class UploadPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                String ext = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (FileUpload1.PostedFile.ContentLength > 2000000)
                {
                   Label1.Text = "Image size is greater than 2 MB......";
                    Label1.ForeColor = System.Drawing.Color.ForestGreen;
                }

                else
                {
                    if (ext.ToLower() == ".jpg" || ext.ToLower() == ".jpeg" || ext.ToLower() == ".gif" || ext.ToLower() == ".png")
                    {
                        FileUpload1.SaveAs(Server.MapPath("Upload//" + FileUpload1.FileName));
                        Label1.Text = "Image Uploaded";
                        Label1.ForeColor = System.Drawing.Color.ForestGreen;
                        Response.Redirect("Register1.aspx");
                    }

                    else
                    {
                        Label1.Text = "Not Image";
                        Label1.ForeColor = System.Drawing.Color.ForestGreen;
                    }
                }
            }
            else
            {
                Label1.Text = "Please Select your file";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}