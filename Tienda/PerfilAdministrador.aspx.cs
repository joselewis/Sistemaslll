using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class PerfilAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NombreAdministrador.InnerHtml = "<h6>" + "Nombre: " + Session["NOMBRE_ADMIN"].ToString() + "</h6>";
            NombreUsuarioAdministrador.InnerHtml = "<h6> " + "Nombre de usuario: " + Session["NOMBRE_USUARIO_ADMIN"].ToString() + " </h6>";
            CorreoAdministrador.InnerHtml = "<h6>" + "Correo: " + Session["CORREO_ELECTRONICO_ADMIN"].ToString() + "</h6>";
            TelefonoAdministrador.InnerHtml = "<h6>" + "Teléfono: " + Session["TELEFONO_ADMIN"].ToString() + "</h6>";
        }
    }
}