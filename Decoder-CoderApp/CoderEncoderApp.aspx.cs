using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiPrimeraApp
{
    public partial class HolaMundo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<string> itemsLista = new List<string>();
            itemsLista.Add("Ingeniero");
            itemsLista.Add("Profesor");
            itemsLista.Add("Desarrollador");
            itemsLista.Add("Arquitecto");

            this.listaTipoPersona.DataSource = itemsLista;
            this.listaTipoPersona.DataBind();
        }

        protected void botonProcesar_Click(object sender, EventArgs e)
        {
            string nombre = "";
            string oficio = "";

            nombre = this.txtNombrePersona.Text;
            oficio = this.listaTipoPersona.SelectedItem.Value.ToString();

            System.Diagnostics.Debug.WriteLine("*****************************************");
            System.Diagnostics.Debug.WriteLine("*****************************************");
            System.Diagnostics.Debug.WriteLine("Nombre enviado al IIS: " + nombre);
            System.Diagnostics.Debug.WriteLine("oficio: " + oficio);
            System.Diagnostics.Debug.WriteLine("*****************************************");
            System.Diagnostics.Debug.WriteLine("*****************************************");

            //Refrescar la vista
            this.nombrePersona.Text = nombre;
            this.oficioPersona.Text = oficio;
        }

        protected void enlaceRetorno_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}