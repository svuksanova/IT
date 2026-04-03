using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstMidterm_2025
{
    public partial class Popolni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string subject = Request.QueryString["subject"];

                if (subject == "mathematics")
                {
                    SubjectsList.Items.Add("Calculus");
                    SubjectsList.Items.Add("Analysis");
                    SubjectsList.Items.Add("Probability");
                }
                else if (subject == "physics")
                {
                    SubjectsList.Items.Add("Electrical engineering");
                    SubjectsList.Items.Add("Electric circuits");
                }
                else if (subject == "informatics")
                {
                    SubjectsList.Items.Add("Structural");
                    SubjectsList.Items.Add("Object");
                    SubjectsList.Items.Add("Algorithms");
                    SubjectsList.Items.Add("IT");
                }

                for (int i = 1; i <= SubjectsList.Items.Count; i++)
                {
                    
                    GradesList.Items.Add("Enter " + i);
                }
            }

        }

        protected void AddGradeBtn_Click(object sender, EventArgs e)
        {
            if (GradesList.SelectedIndex == -1)
            {
                return;
            }

            GradesList.Items[GradesList.SelectedIndex].Text = EnterGradeBox.Text;
            GradesList.ClearSelection();
            EnterGradeBox.Text = "";
        }

        protected void CalculateProsekBtn_Click(object sender, EventArgs e)
        {
            foreach (var item in GradesList.Items)
            {
                if (item.ToString().StartsWith("Enter")) 
                {
                    return;
                }
            }


            double sum = 0;
            double average = 0;

            for(int i=0; i < GradesList.Items.Count; i++)
            {
                double converted = Convert.ToDouble(GradesList.Items[i].Text);
                sum = sum + converted;
            }

            average = sum / GradesList.Items.Count;

            string name = Request.QueryString["name"];
            string email = Request.QueryString["email"];

            string url = "Prosek.aspx?name=" + name + "&average=" + average.ToString() + "&email=" + email;
            Response.Redirect(url);
        }
    }
}