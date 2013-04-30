using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }//end page load
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //create a new instance of the SiteUser class
        SiteUser user = new SiteUser();

        //assign the contents of each text box to the appropriate field of the SiteUser class
        user.birthDay = txtBirthday.Text;
        user.firstName = txtFirstName.Text;
        user.lastName = txtLastName.Text;
        user.email = txtEmail.Text;

        //open a new session and place the object inside to be used on other pages
        Session["addSiteUser"] = user;

        //head to the next page
        Response.Redirect("Default2.aspx");
    }//end button submit click
}//end class Default