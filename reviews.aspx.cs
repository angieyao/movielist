using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime date1 = DateTime.Now;
        Session["today"] = date1.ToShortDateString();
        
        //Label2.Text = DateTime.Now.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            Label1.Text = "Success!!";
        }
        catch  //(InvalidCastException ex)
        {
            Label1.Text = "Fail !!";
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}