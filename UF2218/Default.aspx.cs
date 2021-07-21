using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UF2218
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSaludar_Click(object sender, EventArgs e)
        {
            CambiarMensaje("Hola");
        }

        protected void CbMayusculas_CheckedChanged(object sender, EventArgs e)
        {
            CambiarMensaje("Hola");
        }

        private void CambiarMensaje(string saludo)
        {
            string viejoven = CalFechaNacimiento.SelectedDate > DateTime.Now ? " del futuro" : " del presente";

            LblMensaje.Text = $"{saludo} {TxtNombre.Text} {viejoven}";

            if (CbMayusculas.Checked)
            {
                LblMensaje.Text = LblMensaje.Text.ToUpper();
            }
        }

        protected void BtnDespedir_Click(object sender, EventArgs e)
        {
            CambiarMensaje("Adios");
        }
    }
}