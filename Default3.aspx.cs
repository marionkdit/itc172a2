using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //take the values from the http string, place them into a string, and insert their values inside labels.
        string firstName = Request.QueryString["first"];
        string lastName = Request.QueryString["last"];

        //place the values of the strings into a concatenated thank you message
        lblThanks.Text = "Thank you, " + firstName + " " + lastName + ", for your information!";
    }//end page load
}//end class Default3