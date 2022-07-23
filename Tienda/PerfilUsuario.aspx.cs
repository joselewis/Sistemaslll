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
            Nombre.InnerHtml = "<h6>" + "Nombre: " + Session["NOMBRE"].ToString() + "</h6>";
            NombreUsuario.InnerHtml = "<h6>" + "Nombre de usuario: " + Session["NOMBRE_USUARIO"].ToString() + "</h6>";
            Correo.InnerHtml = "<h6>" + "Correo: " + Session["CORREO_ELECTRONICO"].ToString() + "</h6>";
            Telefono.InnerHtml = "<h6>" + "Teléfono: " + Session["TELEFONO_USUARIO"].ToString() + "</h6>";
        }
    }
}