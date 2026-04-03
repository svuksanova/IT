using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMidterm_2025
{
    public partial class Prosek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string name = Request["name"];
                string average = Request["average"];
                string email = Request["email"];

                LabelMessage.Text = name + " ,Thank you for using our system.Your average is "+average + "  You will receive information about the entered grades and the calculated average by email, at " + email;
            }
        }
    }
}