using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prueba1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGenerarPago_Click(object sender, EventArgs e)
        {
            Pnl1.Visible = false;
            Pnl2.Visible = Visible;

            double valorcuota = 0;
            double valorcuotatotal = 0;
            String valorcuotam = "";
            String valorcuotatotalm = "";

            calculoValorCuota(ref valorcuota, ref  valorcuotatotal, ref valorcuotam, ref valorcuotatotalm);

            lblMostrarCuota.Text = valorcuotam.ToString();
            lblmostrarvcuota.Text = valorcuotam.ToString();
            lblmostrarvtcurso.Text = valorcuotatotalm.ToString();


        }

        public void calculoValorCuota(ref double valorcuota, ref double valorcuotatotal, ref String valorcuotam, ref String valorcuotatotalm)
        {
            double valorcurso = 3500;
            
            String v = txtEntradaValorIni.Text;
            Double valorini = Convert.ToDouble(v);

            /*calculo total*/

            int valormes = 0;
            double recargo = 0;
            Itemselect(ref valormes, ref recargo);

            double valortotal = valorcurso - valorini;

            valorcuota = valortotal / valormes;

            valorcuotam = valorcuota.ToString();

            double recargocuota = valorcuota * recargo + valorcurso;




            /*este es el total*/
            valorcuotatotal = valorcuota + recargocuota;
            valorcuotatotalm = valorcuotatotal.ToString();

        }

        public void Itemselect(ref int valormes , ref double recargo)
        {
            String s = ddlmes.SelectedValue;
            valormes = Convert.ToInt32(s);

            recargo = valormes > 5 ? 0.1 : 0.5;

        }

    }
}