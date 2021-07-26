using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UF2218
{
    public partial class AdminPersonas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FvPersonas.DefaultMode = FormViewMode.Insert;

            GvPersonas.UseAccessibleHeader = true;

            GvPersonas.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void RefrescarGvPersonas(object sender, ObjectDataSourceStatusEventArgs e)
        {
            GvPersonas.DataBind();
        }

        protected void GvPersonas_SelectedIndexChanged(object sender, EventArgs e)
        {
            FvPersonas.ChangeMode(FormViewMode.Edit);
        }

        protected void GvPersonas_DataBinding(object sender, EventArgs e)
        {

        }
    }
}