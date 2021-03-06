using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using BLL;

public partial class PayrollForms_PF_Generate : System.Web.UI.Page
{
    ClsBusnssLayer ObjectBL = new ClsBusnssLayer();
 
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

        //hidcurrenttab.Value = "1";

        if (!IsPostBack)
        {
            //ClientNameLoad();

            GgEPFMasterShow();
        }        
    }   

    //public void ClientNameLoad()
    //{
    //    ddlclientname.Items.Clear();
    //    ddlclientname.Items.Add("--- Select Company Name ---");
    //    ddlclientname.Items.Add("--- ALL Company Name ---");
    //    ddlclientname.DataSource = ObjectBL.SelectClinet();
    //    ddlclientname.DataTextField = "CLIENTNAME";
    //    ddlclientname.DataValueField = "CLIENTID";
    //    ddlclientname.DataBind();
    //}

    //protected void ddlclientname_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //    if (ddlclientname.Text != "--- Select Company Name ---" && ddlclientname.Text != "--- ALL Company Name ---")
    //    {
    //        dt = ObjectBL.SelectClientDetailID(ddlclientname.SelectedValue);
    //        txtdivision.Text = dt.Rows[0]["DIVISION"].ToString();
    //    }
    //}

    protected void btnview_Click(object sender, EventArgs e)
    {
        if (ddlcurrentpfmonth.Text == "---- Select PF Month -------")
        {
            System.Threading.Thread.Sleep(100);
            string message = "alert('Select PF Month')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            ddlcurrentpfmonth.Focus();
        }

        else if (ddlselect.Text == "---Select Type---")
        {
            System.Threading.Thread.Sleep(100);
            string message = "alert('Select Grade')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            ddlselect.Focus();
        }

        else
        {

            if (lblselectoption.Text == "C")
            {
                DgPFGenerate.DataSource = ObjectBL.PFGenerateSelectAll(ddlcurrentpfmonth.SelectedIndex.ToString(), Convert.ToDateTime(txtcurrentpfdate.Text).Year.ToString());
                DgPFGenerate.DataBind();
                CalculateAll();
                FootCalculat();
            }

            else
            {
                DgPFGenerate.DataSource = ObjectBL.PFGenerateSelectAllForJ(ddlcurrentpfmonth.SelectedIndex.ToString(), Convert.ToDateTime(txtcurrentpfdate.Text).Year.ToString());
                DgPFGenerate.DataBind();
                CalculateAll();
                FootCalculat();
            }

            if (DgPFGenerate.Rows.Count > 0)
            {
                Label lblperviousepfstrenght = DgPFGenerate.Rows[0].FindControl("lblperviousepfstrenght") as Label;
                txtPreviousEPFStrength.Text = lblperviousepfstrenght.Text;

                Label lblmemberaddition = DgPFGenerate.Rows[0].FindControl("lblmemberaddition") as Label;
                txtMemberAddition.Text = lblmemberaddition.Text;

                Label lblmemberdeletion = DgPFGenerate.Rows[0].FindControl("lblmemberdeletion") as Label;
                txtMemberDeletion.Text = lblmemberdeletion.Text;

                Label lblcurrentstrength = DgPFGenerate.Rows[0].FindControl("lblcurrentstrength") as Label;
                txtCurrentStrength.Text = lblcurrentstrength.Text;

                Label lbltotalactionstrength = DgPFGenerate.Rows[0].FindControl("lbltotalactionstrength") as Label;
                txtTotalActionStrength.Text = lbltotalactionstrength.Text;
            }
           
        }
    }

    private void CalculateAll()
    {

        for (int i = 0; i < DgPFGenerate.Rows.Count; i++)
        {
            Label lblAC0 = DgPFGenerate.Rows[i].FindControl("lblAC0") as Label;
            Label lblAC1 = DgPFGenerate.Rows[i].FindControl("lblAC1") as Label;
            Label lblAC2 = DgPFGenerate.Rows[i].FindControl("lblAC2") as Label;
            Label lblAC10 = DgPFGenerate.Rows[i].FindControl("lblAC10") as Label;
            Label lblAC21 = DgPFGenerate.Rows[i].FindControl("lblAC21") as Label;
            Label lblAC22 = DgPFGenerate.Rows[i].FindControl("lblAC22") as Label;
            Label lblTotalShare = DgPFGenerate.Rows[i].FindControl("lblTotalShare") as Label;
            Label lblContribution = DgPFGenerate.Rows[i].FindControl("lblContribution") as Label;

            lblTotalShare.Text = (Convert.ToDouble(lblAC1.Text) + Convert.ToDouble(lblAC2.Text) +
                 Convert.ToDouble(lblAC10.Text) + Convert.ToDouble(lblAC21.Text) + Convert.ToDouble(lblAC22.Text)).ToString("#####.00");

            lblContribution.Text= (Convert.ToDouble(lblAC0.Text) + Convert.ToDouble(lblAC1.Text) +
                Convert.ToDouble(lblAC2.Text) + Convert.ToDouble(lblAC10.Text)+ 
                Convert.ToDouble(lblAC22.Text) +
                Convert.ToDouble(lblAC21.Text)).ToString("#####.00");

        }
        //DgPFGenerate.DataBind();
    }


    public void FootCalculat()
    {
        double Ac1 = 0, DiffAC1 = 0, AC2 = 0, AC10 = 0, AC21 = 0, AC22 = 0, Total = 0, TtEmp = 0, TtCont=0 ;

        for (int i = 0; i < DgPFGenerate.Rows.Count; i++)
        {
            Label lblAC0 = DgPFGenerate.Rows[i].FindControl("lblAC0") as Label;
            Label lblAC1 = DgPFGenerate.Rows[i].FindControl("lblAC1") as Label;
            Label lblAC2 = DgPFGenerate.Rows[i].FindControl("lblAC2") as Label;
            Label lblAC10 = DgPFGenerate.Rows[i].FindControl("lblAC10") as Label;
            Label lblAC21 = DgPFGenerate.Rows[i].FindControl("lblAC21") as Label;
            Label lblAC22 = DgPFGenerate.Rows[i].FindControl("lblAC22") as Label;

            Label lblTotalShare = DgPFGenerate.Rows[i].FindControl("lblTotalShare") as Label;
            Label lblContribution = DgPFGenerate.Rows[i].FindControl("lblContribution") as Label;

            Ac1 += Convert.ToDouble(lblAC0.Text);          
            txtTotalEPFcontributionAC1.Text = Ac1.ToString();  // Texbox Calculate

            DiffAC1 += Convert.ToDouble(lblAC1.Text);
            txtTotalEPScontributionAC10.Text = DiffAC1.ToString();  // Texbox Calculate

            AC2 += Convert.ToDouble(lblAC2.Text);
            txtTotaldifferencebetweenEPFEPSAC1.Text = AC2.ToString();  // Texbox Calculate

            AC10 += Convert.ToDouble(lblAC10.Text);
            txtTotalEDLIcontributionERshareAC21.Text = AC10.ToString();  // Texbox Calculate

            AC21 += Convert.ToDouble(lblAC21.Text);
            txtTotalEPFchargesadministrationAC2.Text = AC21.ToString();  // Texbox Calculate

            AC22 += Convert.ToDouble(lblAC22.Text);
            txtTotalEDLIchargesaministrationac22.Text = AC22.ToString();  // Texbox Calculate

            TtEmp += Convert.ToDouble(lblTotalShare.Text);
            TtCont += Convert.ToDouble(lblContribution.Text);

            // Texbox Calculate

            txtAllTotal.Text = (Convert.ToDecimal(txtTotalEPFcontributionAC1.Text) + Convert.ToDecimal(txtTotalEPScontributionAC10.Text) + Convert.ToDecimal(txtTotaldifferencebetweenEPFEPSAC1.Text) + Convert.ToDecimal(txtTotalEDLIcontributionERshareAC21.Text) + Convert.ToDecimal(txtTotalEPFchargesadministrationAC2.Text) + Convert.ToDecimal(txtTotalEDLIchargesaministrationac22.Text)).ToString("####.0#");

            TextBox txtFoottotalAC0 = DgPFGenerate.FooterRow.FindControl("txtFoottotalAC0") as TextBox;
            TextBox txtFoottotalAC1 = DgPFGenerate.FooterRow.FindControl("txtFoottotalAC1") as TextBox;
            TextBox txtFoottotalAC2 = DgPFGenerate.FooterRow.FindControl("txtFoottotalAC2") as TextBox;
            TextBox txtFoottotalAC10 = DgPFGenerate.FooterRow.FindControl("txtFoottotalAC10") as TextBox;
            TextBox txtFoottotalAC21 = DgPFGenerate.FooterRow.FindControl("txtFoottotalAC21") as TextBox;
            TextBox txtFoottotalAC22 = DgPFGenerate.FooterRow.FindControl("txtFoottotalAC22") as TextBox;

            TextBox txtFoottotalShare = DgPFGenerate.FooterRow.FindControl("txtFoottotalShare") as TextBox;
            TextBox txtFoottotalContribution = DgPFGenerate.FooterRow.FindControl("txtFoottotalContribution") as TextBox;

            txtFoottotalAC0.Text = Ac1.ToString();
            txtFoottotalAC1.Text = DiffAC1.ToString();
            txtFoottotalAC2.Text = AC2.ToString();
            txtFoottotalAC10.Text = AC10.ToString();
            txtFoottotalAC21.Text = AC21.ToString();
            txtFoottotalAC22.Text = AC22.ToString();

            txtFoottotalShare.Text = TtEmp.ToString();
            txtFoottotalContribution.Text = TtCont.ToString();
        }
    }

    protected void ddlcurrentpfmonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcurrentpfmonth.SelectedValue != "---- Select PF Month -------")
        {
            string date = "01-" + ddlcurrentpfmonth.SelectedValue + DateTime.Now.Year;
            txtcurrentpfdate.Text = Convert.ToDateTime(date).ToShortDateString();

            //DateTime FromDate = Convert.ToDateTime(txtcurrentpfdate.Text);
            //DateTime ToDate = FromDate.AddMonths(1);
            //ToDate = ToDate.AddDays(-1);
            //Fromdate.Text = FromDate.ToShortDateString();
            //Todate.Text = ToDate.ToShortDateString();
        }
    }

    public void Clearnew()
    {
        txtcurrentpfdate.Text = "";

        ddlcurrentpfmonth.SelectedIndex = 0;

        ddlselect.SelectedIndex = 0;
     
        txtPreviousEPFStrength.Text = "";
        txtMemberAddition.Text = "";
        txtMemberDeletion.Text = "";
        txtCurrentStrength.Text = "";
        txtTotalActionStrength.Text = "";

        DgPFGenerate.DataSource = null;
        DgPFGenerate.DataBind();

        btnsave.Text = "Save";
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        Clearnew();      
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (btnsave.Text == "Save")
        {
            ObjectBL.InsertPfGenerateHdr(ddlcurrentpfmonth.SelectedValue, txtcurrentpfdate.Text, ddlselect.SelectedValue, txtPreviousEPFStrength.Text,
            txtMemberAddition.Text, txtMemberDeletion.Text, txtCurrentStrength.Text, txtTotalActionStrength.Text);
            SelectIDforDtl();

            System.Threading.Thread.Sleep(100);
            string message = "alert('Data Save')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);

            Clearnew();

            GgEPFMasterShow();
        }
        else
        {
            ObjectBL.UpdatePfGenerateHdr(TypeId.Text, ddlcurrentpfmonth.SelectedValue, txtcurrentpfdate.Text, ddlselect.SelectedValue, txtPreviousEPFStrength.Text,
           txtMemberAddition.Text, txtMemberDeletion.Text, txtCurrentStrength.Text, txtTotalActionStrength.Text);
            DeleteInsertData();
            SelectIDforDtl();

            System.Threading.Thread.Sleep(100);
            string message = "alert('Data Save')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);

            Clearnew();

            GgEPFMasterShow();

        }      
    }

    private void DeleteInsertData()
    {
        ObjectBL.DeletePfGenerateHdr(TypeId.Text);
    }

    private void SelectIDforDtl()
    {
        dt = new DataTable();
        dt = ObjectBL.PfGenerateHdrMaxSelect();
        if (dt.Rows[0][0].ToString() != "")
        {
            string ID = dt.Rows[0][0].ToString();
            InsertPFDtl(ID);
        }
    }

    private void InsertPFDtl(string ID)
    {
        for (int i = 0; DgPFGenerate.Rows.Count > i; i++)
        {            
            Label lblEmpid = DgPFGenerate.Rows[i].FindControl("lblEmpid") as Label;
            Label lblemployeecode = DgPFGenerate.Rows[i].FindControl("lblemployeecode") as Label;
            Label lblClntId = DgPFGenerate.Rows[i].FindControl("lblClntId") as Label;
            Label lblpfwages = DgPFGenerate.Rows[i].FindControl("lblpfwages") as Label;
            Label lblncpdays = DgPFGenerate.Rows[i].FindControl("lblncpdays") as Label;
            Label lblAC0 = DgPFGenerate.Rows[i].FindControl("lblAC0") as Label;
            Label lblAC1 = DgPFGenerate.Rows[i].FindControl("lblAC1") as Label;
            Label lblAC2 = DgPFGenerate.Rows[i].FindControl("lblAC2") as Label;
            Label lblAC10 = DgPFGenerate.Rows[i].FindControl("lblAC10") as Label;
            Label lblAC21 = DgPFGenerate.Rows[i].FindControl("lblAC21") as Label;
            Label lblAC22 = DgPFGenerate.Rows[i].FindControl("lblAC22") as Label;
            Label lblTotalShare = DgPFGenerate.Rows[i].FindControl("lblTotalShare") as Label;
            Label lblContribution = DgPFGenerate.Rows[i].FindControl("lblContribution") as Label;

            ObjectBL.InsertPfGenerateDtl(ID, lblEmpid.Text,lblemployeecode.Text, lblClntId.Text,lblClntId.Text,lblpfwages.Text,
                lblAC0.Text, lblAC1.Text, lblAC2.Text, lblAC10.Text, lblAC21.Text, lblAC22.Text, lblTotalShare.Text, lblContribution.Text);
        }
    }

    public void GgEPFMasterShow()
    {
        DGPFgenerateBK.DataSource = ObjectBL.PfGenerateBKGridshowBC();
        DGPFgenerateBK.DataBind();

    }

    protected void DGPFgenerateBK_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label lblpfgid = DGPFgenerateBK.SelectedRow.FindControl("lblpfgid") as Label;
        Label lblpfmonth = DGPFgenerateBK.SelectedRow.FindControl("lblpfmonth") as Label;
        Label lblpfdate = DGPFgenerateBK.SelectedRow.FindControl("lblpfdate") as Label;
        Label lblpfType = DGPFgenerateBK.SelectedRow.FindControl("lblpfType") as Label;
        Label lblPreEPFStrength = DGPFgenerateBK.SelectedRow.FindControl("lblPreEPFStrength") as Label;
        Label lblMemberAddition = DGPFgenerateBK.SelectedRow.FindControl("lblMemberAddition") as Label;
        Label lblMemberDelection = DGPFgenerateBK.SelectedRow.FindControl("lblMemberDelection") as Label;
        Label lblCurrentStrength = DGPFgenerateBK.SelectedRow.FindControl("lblCurrentStrength") as Label;
        Label lblActionStrength = DGPFgenerateBK.SelectedRow.FindControl("lblActionStrength") as Label;

        btnsave.Text = "Update";

        TypeId.Text = lblpfgid.Text;
        ddlcurrentpfmonth.Text = lblpfmonth.Text;
        txtcurrentpfdate.Text = lblpfdate.Text;
        ddlselect.Text = lblpfType.Text;
        txtPreviousEPFStrength.Text = lblPreEPFStrength.Text;
        txtMemberAddition.Text = lblMemberAddition.Text;
        txtMemberDeletion.Text = lblMemberDelection.Text;
        txtCurrentStrength.Text = lblCurrentStrength.Text;
        txtTotalActionStrength.Text = lblActionStrength.Text;

        GetGridDetailForUpdate();
    
    }

    private void GetGridDetailForUpdate()
    {
        DgPFGenerate.DataSource = ObjectBL.SelectPfGenerateDtl(TypeId.Text);
        DgPFGenerate.DataBind();
    }

    //protected void But_Click(object sender, EventArgs e)
    //{
    //    hidcurrenttab.Value = "2";
    //}

    protected void txtTotalEPFcontributionAC1_TextChanged(object sender, EventArgs e)
    {
        FootCalculat();
    }

    protected void txtTotalEPScontributionAC10_TextChanged(object sender, EventArgs e)
    {
        FootCalculat();
    }

    protected void txtTotaldifferencebetweenEPFEPSAC1_TextChanged(object sender, EventArgs e)
    {
        FootCalculat();
    }

    protected void txtTotalEDLIcontributionERshareAC21_TextChanged(object sender, EventArgs e)
    {
        FootCalculat();
    }

    protected void txtTotalEPFchargesadministrationAC2_TextChanged(object sender, EventArgs e)
    {
        FootCalculat();
    }

    protected void txtTotalEDLIchargesaministrationac22_TextChanged(object sender, EventArgs e)
    {
        FootCalculat();
    }

    protected void txtAllTotal_TextChanged(object sender, EventArgs e)
    {
        FootCalculat();
    }
}