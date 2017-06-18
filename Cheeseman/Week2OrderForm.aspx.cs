//Designer: Michael Cheeseman
//Page Name: Week2OrderForm.aspx.cs
//Last Edit: March 28, 2014
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;               // Needed for System.Drawing.KnownColor
using System.Drawing.Text;          // Needed for InstalledFontCollection
using System.Collections;           // Needed for ArrayList and HashTables
using System.ComponentModel;        // Needed for TypeConverter
using System.Reflection;            // Need for field information 


namespace Cheeseman
{
    public partial class Week2OrderForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack == false)
            {
                RightPanel.Visible = false;
                foreach (FieldInfo col in typeof(KnownColor).GetFields())
                {
                    if (col.FieldType == typeof(KnownColor))
                    {
                        DDLBackColors.Items.Add(new ListItem(col.Name, col.Name));
                        DDLFontColors.Items.Add(new ListItem(col.Name, col.Name));
                    }
                }

                for (int i = 0; i < DDLBackColors.Items.Count; i++)
                {
                    DDLBackColors.Items[i].Attributes.Add("style", "background-color:" + DDLBackColors.Items[i].Text);
                    DDLFontColors.Items[i].Attributes.Add("style", "background-color:" + DDLFontColors.Items[i].Text);
                }

                InstalledFontCollection myFontCollection = new InstalledFontCollection();
                foreach (FontFamily MyFontFamily in myFontCollection.Families)
                {
                    DDLFontFamily.Items.Add(MyFontFamily.Name);
                }
            }
            else
            {
                UpdateCard();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }

        private void UpdateCard()
        {
            RightPanel.Visible = true;
            // Update the panel.
            RightPanel.BackColor = Color.FromName(DDLBackColors.SelectedItem.Text);
            RightPanel.ForeColor = Color.FromName(DDLFontColors.SelectedItem.Text);

            // Update the image.
            imgCard.ImageUrl = "~/Images/" + DDLCardImage.SelectedValue;

            // Update the text.
            labelCardHeading.Text = txtCardHeading.Text;
            labelCardHeading.Font.Name = DDLFontFamily.SelectedItem.Text;
            labelCardHeading.Font.Size = FontUnit.Point(Int32.Parse(DDLFontSize.SelectedItem.Value));
            labelCardHeading.ForeColor = Color.FromName(DDLFontColors.SelectedItem.Text);

            labelCardMessage.Text = txtCardMessage.Text;
            labelCardMessage.Font.Name = DDLFontFamily.SelectedItem.Text;
            labelCardMessage.Font.Size = FontUnit.Point(Int32.Parse(DDLFontSize.SelectedItem.Value));
            labelCardMessage.ForeColor = Color.FromName(DDLFontColors.SelectedItem.Text);

            Double price = Convert.ToDouble(RadioButtonList1.SelectedValue);
            int numCards = Convert.ToInt32(txtNumberCards.Text);
            Double amountDue = price * numCards;
            lblMessage.Text = "Your total order due is $" +
                String.Format("{0, 7:c2}", amountDue.ToString());
        }

    }
}