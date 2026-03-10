using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Destiantions
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrikazhiGrad_Click(object sender, EventArgs e)
        {
            //->za eden selektiran item:

            //ListItem selectedItem = ListaGradovi.SelectedItem;
            //SelectedCity.Text = selectedItem.Text;
            //Distance.Text = selectedItem.Value.ToString();

            //->za povekje items selektirani odedansh:

            ListItemCollection items = ListaGradovi.Items;

            SelectedCity.Text = "";
            Distance.Text = "";

            foreach(ListItem item in items)
            {
                if (item.Selected)
                {
                    SelectedCity.Text += "</br>" + item.Text;
                    Distance.Text += "</br>" + item.Value;
                }
            }

        }
    }
}