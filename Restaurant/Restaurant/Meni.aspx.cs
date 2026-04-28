using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class Meni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                ddlJadenja.Items.Add(new ListItem("Хамбургер", "0"));
                ddlJadenja.Items.Add(new ListItem("Пица", "1"));
                ddlJadenja.Items.Add(new ListItem("Салата", "2"));

                lblCena.Text = ddlJadenja.Items[ddlJadenja.SelectedIndex].Text + " - цена: " + ddlJadenja.Items[ddlJadenja.SelectedIndex].Value.ToString();
            }
        }

        protected void btnDodadi_Click(object sender, EventArgs e)
        {

            if (txtIme.Text=="" || txtCena.Text=="")
            {
                return;
            }
            
            foreach (ListItem item in ddlJadenja.Items){
                if (item.Text == txtIme.Text)
                {
                    return;
                }
            }

            ddlJadenja.Items.Add(new ListItem(txtIme.Text,txtCena.Text));

            txtCena.Text = "";
            txtIme.Text = "";
        }

        protected void ddlJadenja_SelectedIndexChanged(object sender, EventArgs e)
        {

            lblCena.Text = ddlJadenja.SelectedItem.Text +" - цена: " + ddlJadenja.SelectedItem.Value;
        }

        protected void btnPotvrdi_Click(object sender, EventArgs e)
        {
            Session["BrojJadenja"] = ddlJadenja.Items.Count; 
            Response.Redirect("Potvrda.aspx");
        }
    }
}