using DevExpress.Web;
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
        if(!IsPostBack)
            GridView.JSProperties["cpOneColumnInHeader"] = false;
    }
    protected void GridView_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridViewAfterPerformCallbackEventArgs e)
    {
        if (e.CallbackName == "COLUMNMOVE")
        {
            ASPxGridView gridView = (ASPxGridView)sender;
            gridView.JSProperties["cpOneColumnInHeader"] = false;
            int visibleColNumber = 0;
            foreach (GridViewColumn column in gridView.Columns)
               if (column.Visible)
                 visibleColNumber++;
            if(visibleColNumber==1)
              gridView.JSProperties["cpOneColumnInHeader"] = true;
        }
    }
}