using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restaurant_order_app.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                form1.Attributes.Add("class", "sub_page");
            }
            else
            {
                form1.Attributes.Remove("class");
                // Load control
                Control sliderUserControl = (Control)Page.LoadControl("SliderUserControl.ascx");
                // add control to panel
                pnlSliderUC.Controls.Add(sliderUserControl);
            }


            if (Session["userId"] != null)
            {
                lbLoginLogout.Text = "Logout";
                Utils utils = new Utils();
                Session["cartCount"] = utils.cartCount(Convert.ToInt32(Session["userId"])).ToString();
            }
            else
            {
                lbLoginLogout.Text = "Login";
                Session["cartCount"] = "0";
            }
        }

           protected void lbLoginLogout_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }
    }
}