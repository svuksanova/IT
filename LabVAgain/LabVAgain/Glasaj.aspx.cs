using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabVAgain
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                SubjectsList.Items.Add(new ListItem("Интернет Технологии", "Проф.1"));
                SubjectsList.Items.Add(new ListItem("Интернет", "Проф.2"));
                SubjectsList.Items.Add(new ListItem("Дигитална Електроника", "Проф.3"));

                CreditsList.Items.Add("6");
                CreditsList.Items.Add("5.5");
                CreditsList.Items.Add("5.5");

                ProfessorLabel.Text = SubjectsList.Items[0].Value;
            }
        }

        protected void SubjectsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CreditsList.SelectedIndex = SubjectsList.SelectedIndex;
            ProfessorLabel.Text = SubjectsList.Items[SubjectsList.SelectedIndex].Value;
        }

        protected void CreditsList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SubjectsList.SelectedIndex = CreditsList.SelectedIndex;
            ProfessorLabel.Text = SubjectsList.Items[SubjectsList.SelectedIndex].Value;
        }

        protected void VoteBtn_Click(object sender, EventArgs e)
        {
            if (SubjectsList.SelectedIndex != -1 && CreditsList.SelectedIndex != -1)
            {
                Response.Redirect("UspeshnoGlasanje.aspx");
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            if (SubjectAddBox.Text.Length == 0 || CreditsAddBox.Text.Length ==0 )
            {
                return;
            }

            foreach (var item in SubjectsList.Items)
            {
                if (SubjectAddBox.Text == item.ToString())
                {
                    return;
                }
            }

            SubjectsList.Items.Add(SubjectAddBox.Text);
            CreditsList.Items.Add(CreditsAddBox.Text);
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            CreditsList.Items.RemoveAt(SubjectsList.SelectedIndex);
            SubjectsList.Items.RemoveAt(SubjectsList.SelectedIndex);
        }
    }
}