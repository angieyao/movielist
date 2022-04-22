using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mylist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            Label1.Text = "資料新增成功!!";
        }
        catch  //(InvalidCastException ex)
        {
            Label1.Text = "資料新增錯誤!!";
        }
    }
}