using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected string[] units = { "m", "cm", "mm", "km", "mi", "yd", "ft", "in" };
    protected double[] conv = { 1, .01, .001, 1000, 1609.34, 0.9144, 0.3048, 0.0254 };
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            fromList.DataSource = units;
            toList.DataSource = units;
            fromList.DataBind();
            toList.DataBind();
        }
    }

    protected void Convert_Click(object sender, EventArgs e)
    {
        double innum;
        ErrorBox.Visible = false;
        int inindex = fromList.SelectedIndex;
        int outindex = toList.SelectedIndex;
        if (inindex == outindex)
        {
            num1.Text = "";
            ErrorBox.Text = "You're converting to the same unit! Try again.";
            ErrorBox.Visible = true;
        }
        else
        {
            if (Double.TryParse(num1.Text, out innum))
            {
                ErrorBox.Visible = false;
                num2.Text = ((innum * conv[inindex]) / conv[outindex]).ToString();
            }
            else
            {
                num1.Text = "";
                ErrorBox.Text = "Please enter a valid number!";
                ErrorBox.Visible = true;
            }
        }
    }
}