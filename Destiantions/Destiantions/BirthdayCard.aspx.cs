using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Destiantions
{
    public partial class BirthdayCard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BackgroundColor.Items.Add(new ListItem("Green"));
            BackgroundColor.Items.Add(new ListItem("Yellow"));
            BackgroundColor.Items.Add(new ListItem("Red"));
            BackgroundColor.Items.Add(new ListItem("Blue"));
            BackgroundColor.Items.Add(new ListItem("Pink"));
            BackgroundColor.Items.Add(new ListItem("Gray"));
            BackgroundColor.Items.Add(new ListItem("Orange"));
            BackgroundColor.Items.Add(new ListItem("Purple"));

            Font.Items.Add(new ListItem("Arial"));
            Font.Items.Add(new ListItem("Times New Roman"));
            Font.Items.Add(new ListItem("Verdana"));
            Font.Items.Add(new ListItem("Courier"));

            FontColor.Items.Add(new ListItem("Green"));
            FontColor.Items.Add(new ListItem("Yellow"));
            FontColor.Items.Add(new ListItem("Red"));
            FontColor.Items.Add(new ListItem("Blue"));
            FontColor.Items.Add(new ListItem("Pink"));
            FontColor.Items.Add(new ListItem("Gray"));
            FontColor.Items.Add(new ListItem("Orange"));
            FontColor.Items.Add(new ListItem("Purple"));

            BorderType.Items.Add(new ListItem(BorderStyle.None.ToString(), ((int)BorderStyle.None).ToString()));
            BorderType.Items.Add(new ListItem(BorderStyle.Solid.ToString(), ((int)BorderStyle.Solid).ToString()));
            BorderType.Items.Add(new ListItem(BorderStyle.Ridge.ToString(), ((int)BorderStyle.Ridge).ToString()));
            BorderType.Items.Add(new ListItem(BorderStyle.Groove.ToString(), ((int)BorderStyle.Groove).ToString()));
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Poraka.Text = CardContent.Text;
            Poraka.Font.Name = Font.SelectedItem.Text;

            int size;
            var success = Int32.TryParse(FontSize.Text, out size);

            if (success)
            {
                Poraka.Font.Size = size;
            }

            if (ShowImage.Checked)
            {
                Image1.Visible = true;
            }

            Card.BackColor = Color.FromName(BackgroundColor.SelectedItem.Text);

        }
    }
}