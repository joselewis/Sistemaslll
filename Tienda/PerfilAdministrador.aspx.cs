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
            CargarPerfilAdmin();
        }

        #region "Muestra la información de la sesión del administrador en su respectivo perfíl"
        void CargarPerfilAdmin()
        {
            NombreAdministrador.InnerHtml = "<h6>" + Session["NOMBRE_ADMIN"].ToString() + "</h6>";
            NombreUsuarioAdministrador.InnerHtml = "<h6> " + Session["NOMBRE_USUARIO_ADMIN"].ToString() + " </h6>";
            CorreoAdministrador.InnerHtml = "<h6>" + Session["CORREO_ELECTRONICO_ADMIN"].ToString() + "</h6>";
            TelefonoAdministrador.InnerHtml = "<h6>" + Session["TELEFONO_ADMIN"].ToString() + "</h6>";
        }
        #endregion
    }
}