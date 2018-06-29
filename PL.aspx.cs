using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BussinessLayer;
using DataAccessLayer;

public partial class PL : System.Web.UI.Page
{
    Bussiness b = new Bussiness();
    protected void Page_Load(object sender, EventArgs e)
    {
      
          
  
    }
    public void GridBind()
    {
        DataAccess da = new DataAccess();
        DataSet ds = da.Al_bind();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void btninsert_Click(object sender, EventArgs e)
    {
     
        b.usermame = txtusermame.Text;
        b.password = txtpassword.Text;
        b.insert_record();
      
       // GridBind();
       
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        b.id = Convert.ToInt32(txtid.Text);
        b.usermame = txtusermame.Text;
        b.password = txtpassword.Text;

        b.update_recond(b.id);
        //GridBind();

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        b.id = Convert.ToInt32(txtid.Text);

        b.deletet_record(b.id);
        //GridBind();
    }
}