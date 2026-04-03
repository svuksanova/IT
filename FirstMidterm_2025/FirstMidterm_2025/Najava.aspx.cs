using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMidterm_2025
{
    public partial class Najava : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void MathematicsLoginBtn_Click(object sender, EventArgs e)
        {
            string name = NameBox.Text;
            string email = EmailBox.Text;

            string url = "Popolni.aspx?subject=mathematics&name=" + name + "&email=" + email;
            Response.Redirect(url);
        }

        protected void PhysicsLoginBtn_Click(object sender, EventArgs e)
        {
            string name = NameBox.Text;
            string email = EmailBox.Text;

            string url = "Popolni.aspx?subject=physics&name=" + name + "&email=" + email;
            Response.Redirect(url);
        }

        protected void InformaticsLoginBtn_Click(object sender, EventArgs e)
        {
            string name = NameBox.Text;
            string email = EmailBox.Text;

            string url = "Popolni.aspx?subject=informatics&name=" + name + "&email=" + email;
            Response.Redirect(url);
        }
    }
}