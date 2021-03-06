using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BLL;

public partial class PayrollForms_Default : System.Web.UI.Page
{
    ClsBusnssLayer objectBL = new ClsBusnssLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {                     
            ddlclientnameLoad();
        }
    }
    private void ddlclientnameLoad()
    {
        ddlclientname.Items.Clear();
        ddlclientname.Items.Add("---- Select Client Name ----");
        ddlclientname.DataSource = objectBL.SelectClinet();
        ddlclientname.DataTextField = "CLIENTNAME";
        ddlclientname.DataValueField = "CLIENTID";
        ddlclientname.DataBind();
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
            Dgclientname.DataSource = objectBL.SelectESIEstablishment(ddlclientname.SelectedValue, txtemployeecode.Text);
            Dgclientname.DataBind();       
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        ddlclientname.Items.Clear();
        ddlclientname.Items.Add("---- Select Client Name ----");
        ddlclientnameLoad();

        txtemployeecode.Text = "";
        txtentry1.Text = "";
        txtentry2.Text = "";
        txtentry3.Text = "";
        txtentry4.Text = "";

        Dgclientname.DataSource = null;
        Dgclientname.DataBind();
    }
}