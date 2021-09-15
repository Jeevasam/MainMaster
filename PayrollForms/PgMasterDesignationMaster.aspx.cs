using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Data.Sql;
using Message;

public partial class PageDesignationMaster : System.Web.UI.Page
{
    ClsBusnssLayer objectBL = new ClsBusnssLayer();
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings.Get("SuryaOnlineConnectionString"));
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    string Error = "0";

    protected void Page_Load(object sender, EventArgs e)
    {
        hidcurrenttab.Value = "1";

        if (!IsPostBack)
        {    
            DgDesigLoad();
            ddldesignationclientnameLoad();

            TypeID.Text = "0";
        }       
    }

    private void ddldesignationclientnameLoad()
    {
        ddldesignationclientname.Items.Clear();
        ddldesignationclientname.Items.Add("---- Select Client -------");
        ddldesignationclientname.DataSource = objectBL.SelectClinet();
        ddldesignationclientname.DataTextField = "CLIENTNAME";
        ddldesignationclientname.DataValueField = "CLIENTID";
        ddldesignationclientname.DataBind();
    }

    private void txtdesignationcodeLoad()
    {
        
        con.Close();
        con.Open();
        string str = @"select max(DESIGNATIONCODE) as DESIGNATIONCODE from DesignationMaster  where CLIENTID ='" + ddldesignationclientname.SelectedValue + "'";
        da = new SqlDataAdapter(str, con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["DESIGNATIONCODE"].ToString() == "")
            {
                txtdesignationcode.Text = "0001";
            }
            else
            {
                decimal dptcode = Convert.ToDecimal(dt.Rows[0]["DESIGNATIONCODE"]);
                dptcode = dptcode + 1;
                txtdesignationcode.Text = dptcode.ToString("0###");
            }
        }
        con.Close();
    }

    private void DgDesigLoad()
    {
        DgDesig.DataSource = objectBL.SelectDesignation();
        DgDesig.DataBind();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {

        if (ddldesignationclientname.Text.Trim() == "")
        {
            System.Threading.Thread.Sleep(100);
            string message = "alert('Select Clinet Name')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            ddldesignationclientname.Focus();
        }

        else if (txtdesignationcode.Text.Trim() == "")
        {
            System.Threading.Thread.Sleep(100);
            string message = "alert('Enter the Designation Code')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            txtdesignationcode.Focus();
        }

        else if (txtdesignationname.Text.Trim() == "")
        {
            System.Threading.Thread.Sleep(100);
            string message = "alert('Enter the Designation Name')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            txtdesignationname.Focus();
        }

        else
        {
            if (TypeID.Text == "0")
            {
                checkedEx();
                if (Error == "0")
                {
                    objectBL.DesignationMasterInsertAndUpdate(TypeID.Text,txtdesignationcode.Text,txtdesignationname.Text,ddldesignationclientname.SelectedValue, "0", DateTime.Now.ToString());

                    System.Threading.Thread.Sleep(100);
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", MessageBox.Save, true);
                }
                else
                {
                    System.Threading.Thread.Sleep(100);
                    ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", MessageBox.Exists, true);
                }
            }
            else
            {
                objectBL.DesignationMasterInsertAndUpdate(TypeID.Text, txtdesignationcode.Text, txtdesignationname.Text, ddldesignationclientname.SelectedValue, "0", DateTime.Now.ToString());

                System.Threading.Thread.Sleep(100);
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", MessageBox.Save, true);
            }
            DgDesigLoad();
            CleartheText();             
        }
    }

    private void checkedEx()
    {        
        dt = objectBL.SelectDesignationMasterIDEx(ddldesignationclientname.SelectedValue, txtdesignationname.Text);
        
        if (dt.Rows.Count > 0)
        {
            Error = "1";
        }        
    }

    protected void DgDesig_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label Desgid = DgDesig.SelectedRow.FindControl("lblDesgID") as Label;
        Label Code = DgDesig.SelectedRow.FindControl("lblDesgCode") as Label;
        Label Name = DgDesig.SelectedRow.FindControl("lblDesgName") as Label;
        Label DesgclientName = DgDesig.SelectedRow.FindControl("lblDesgclientName") as Label;
        Label Desdivision = DgDesig.SelectedRow.FindControl("lblDesdivision") as Label;

        Label lblCLIENTID = DgDesig.SelectedRow.FindControl("lblCLIENTID") as Label;

        TypeID.Text = Desgid.Text;
        txtdesignationcode.Text = Code.Text;
        txtdesignationname.Text = Name.Text;      
        txtdivi.Text= Desdivision.Text;
        ddldesignationclientnameLoad();
        ddldesignationclientname.SelectedValue = lblCLIENTID.Text;
        btnsave.Text = "Update";
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        CleartheText();
    }

    private void CleartheText()
    {    
        ddldesignationclientname.Items.Clear();
        ddldesignationclientname.Items.Add("---- Select Client -------");
        ddldesignationclientnameLoad();
        txtdesignationcode.Text = "";
        txtdivi.Text = "";
        txtdesignationname.Text = "";        
    }

    protected void txtdesignationname_TextChanged(object sender, EventArgs e)
    {
        txtdesignationname.Text = txtdesignationname.Text.ToUpper();
    }

    protected void txtdesignationnameview_TextChanged(object sender, EventArgs e)
    {
        txtdesignationnameview.Text = txtdesignationnameview.Text.ToUpper();
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        hidcurrenttab.Value = "2";

        DgDesig.DataSource = objectBL.SelectDesignationMasterView(txtdesignationnameview.Text);
        DgDesig.DataBind();
    }

    protected void ddldesignationclientname_SelectedIndexChanged(object sender, EventArgs e)
    {       
        dt = objectBL.SelectClientDetailID(ddldesignationclientname.SelectedValue);
        txtdivi.Text = dt.Rows[0]["DIVISION"].ToString();
        txtdesignationcodeLoad();
    }
}