using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //check to see if the session exists and has contents
        if (Session["addSiteUser"] != null)
        {
            //find the session and reassign the values to the properties of the object
            SiteUser user = (SiteUser)Session["addSiteUser"];

            //pull out each value and place it into the appropriate text box
            txtFirstName.Text = user.firstName;
            txtLastName.Text = user.lastName;
            txtBirthday.Text = user.birthDay;
            txtEmail.Text = user.email;
        }//end if
        else
        {
            //return to default page if session is absent or empty
            Response.Redirect("Default.aspx");
        }
    }//end page load
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //redirect to default 3 using get method to pass information
        Response.Redirect("Default3.aspx?first=" + txtFirstName.Text + "&last=" + txtLastName.Text + "&birthday=" + txtBirthday.Text + "&email=" + txtEmail.Text);
    }//end btnSubmit click
}//end class Default2