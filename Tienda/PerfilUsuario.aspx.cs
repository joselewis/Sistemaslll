using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class PerfilUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarPerfilUsuario();
        }

        #region "Muestra la información de la sesión del administrador en su respectivo perfíl"
        void CargarPerfilUsuario()
        {
            Nombre.InnerHtml = "<h6>" + Session["NOMBRE"].ToString() + "</h6>";
            NombreUsuario.InnerHtml = "<h6>" + Session["NOMBRE_USUARIO"].ToString() + "</h6>";
            Correo.InnerHtml = "<h6>" + Session["CORREO_ELECTRONICO"].ToString() + "</h6>";
            Telefono.InnerHtml = "<h6>" + Session["TELEFONO_USUARIO"].ToString() + "</h6>";
        }
        #endregion

        #region "Método para ir a los métodos de pago"
        protected void IrMetodoPago_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MetodoPago.aspx");
        }
        #endregion
    }
}