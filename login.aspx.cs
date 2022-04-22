using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if(GridView1.Rows.Count==1)  //符合資料有1筆
        {
            Response.Redirect("mylist.aspx");
        }
        else
        {
            Label1.Text = "登入失敗，請重新輸入";
            TextBox1.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.Insert();
            Label2.Text = "註冊成功!!";
        }
        catch  //(InvalidCastException ex)
        {
            Label2.Text = "註冊失敗!!";
        }
    }
}