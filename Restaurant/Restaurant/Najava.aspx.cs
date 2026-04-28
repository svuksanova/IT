using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNajava_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Response.Redirect("Meni.aspx");
            }
        }
    }
}