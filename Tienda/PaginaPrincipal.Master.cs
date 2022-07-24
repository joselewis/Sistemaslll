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

        //int Sesion = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            MenuPrincipal();

            if (!Page.IsPostBack)
            {
                String Rol = Session["TIPO_USUARIO"].ToString();

                switch (Rol)
                {
                    case "Normal":
                        txtNombreUsuarioSesion.Text = Session["NOMBRE_USUARIO"].ToString();
                        break;
                    case "Administrador":
                        txtNombreAdminSesion.Text = Session["NOMBRE_USUARIO_ADMIN"].ToString();
                        break;
                }
            }
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
                    LinksMenuPrincipal += "<div class='sb-nav-link-icon' >" +
                                          "<i class='fas fa-tachometer - alt'>" +
                                          "</i>" +
                                          "</div>" +
                                          "<a class='nav - link' href ='PerfilUsuario.aspx'>Perfil</a>" + "</a>";
                    break;

                case "Administrador":
                    LinksMenuPrincipal += "<div class='sb-nav-link-icon' >" +
                                          "<i class='fas fa-tachometer - alt'>" +
                                          "</i>" +
                                          "</div>" +
                                          "<a class='nav - link' href ='PerfilAdministrador.aspx'>Perfil Administrador</a>" +
                                          "<a class='nav - link' href ='RegistrarAdministrador.aspx'>Nuevo Administrador</a>" +
                                          "<a class='nav - link' href ='MantenimientoAdmin.aspx'>Mantenimiento Admins</a>" + "</a>";
                    break;
            }

            Titulo_Admin.InnerHtml += LinksMenuPrincipal;
        }
    }
}