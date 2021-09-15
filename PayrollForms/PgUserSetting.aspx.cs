using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using BLL;
using System.Data;
using System.Configuration;

public partial class PayrollForms_PgTreeViewSetup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings.Get("SuryaOnlineConnectionString"));
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    DataSet ds = new DataSet();

    ClsBusnssLayer objectBL = new ClsBusnssLayer();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }

        ServerSideChangeSelection(TreeView1, true);

    }
    protected TreeView ServerSideChangeSelection(TreeView t, bool check)
    {
        foreach (TreeNode tn in t.Nodes)
        {
            tn.Checked = check;
            if (tn.ChildNodes.Count < 0)
            {
                foreach (TreeNode childNd in tn.ChildNodes)
                {
                    childNd.Checked = check;
                }
            }          
        }
        return t;      
    }

    protected void btnview_Click(object sender, EventArgs e)
    {
        if (btnview.Text == "View")
        {
            objectBL.UserSettingInsert(txtusername.Text, txtpassword.Text);
        }
    }
}
        
