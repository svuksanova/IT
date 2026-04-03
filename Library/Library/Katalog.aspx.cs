using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Katalog : System.Web.UI.Page
    {

        string[] books = { "Книга 1", "Книга 2", "Книга 3", "Книга 4" };
        string[] authors = { "Автор 1", "Автор 2", "Автор 3", "Автор 4" };
        string[] genres = { "Белетристика", "Белетристика", "Научна фантастика", "Историја" };
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {

                GenreDropDownList.Items.Add("Белетристика");
                GenreDropDownList.Items.Add("Научна фантастика");
                GenreDropDownList.Items.Add("Историја");
                GenreDropDownList.Items.Add("Биографија");

            }
        }

        protected void GenreDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            BooksList.Items.Clear();

            string selectedGenre = GenreDropDownList.SelectedValue;

            for (int i = 0; i < books.Length; i++)
            {
                if (genres[i] == selectedGenre)
                {
                    BooksList.Items.Add(new ListItem(books[i], authors[i]));
                }
            }

            BooksList.Items.Clear();

        }

        protected void BooksList_SelectedIndexChanged(object sender, EventArgs e)
        {
            AuthorLabel.Text = BooksList.Items[BooksList.SelectedIndex].Value.ToString();
        }

        protected void ReservationBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Potvrda.aspx");
        }

    }
}