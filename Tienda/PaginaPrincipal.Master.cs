using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class PaginaPrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MenuPrincipal();
        }
        protected void MenuPrincipal()
        {
            String Rol = Session["TIPO_USUARIO"].ToString();
            String PaginaInicio = "";
            String LinksMenuPrincipal = "";

            switch (Rol)
            {
                case "Normal":
                    PaginaInicio = "/Usuario.aspx";
                    break;

                case "Administrador":
                    LinksMenuPrincipal += "<div class='sb-nav-link-icon' >" +
                                          "<i class='fas fa-tachometer - alt'>" +
                                          "</i>" +
                                          "</div>" +
                                          "<a class='nav - link' href ='RegistrarAdministrador.aspx'>Nuevo Administrador</a>" +
                                          "<a class='nav - link' href ='MantenimientoAdmin.aspx'>Mantenimiento Admins</a>" + "</a>";
                    break;
            }

            Titulo_Admin.InnerHtml += LinksMenuPrincipal;
        }
    }
}