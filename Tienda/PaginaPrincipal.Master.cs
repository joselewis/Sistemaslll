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
                    LinksMenuPrincipal += "<a class='nav-link' href='PerfilUsuario.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Perfil" +
                                          "</a>";
                    break;

                case "Administrador":
                    LinksMenuPrincipal += "<a class='nav-link' href='PerfilAdministrador.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Perfil admin" +
                                          "</a>" +

                                          "<a class='nav-link' href='RegistrarAdministrador.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Registrar admin" +
                                          "</a>" +

                                          "<a class='nav-link' href='MantenimientoAdmin.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Mantenimiento Admin" +
                                          "</a>" +

                                          "<a class='nav-link' href='MantenimientoProductos.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Mantenimiento Productos" +
                                          "</a>" +

                                          "<a class='nav-link' href='MantenimientoUsuarios.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Mantenimiento Usuarios" +
                                          "</a>";

                    break;
            }

            Titulo_Admin.InnerHtml += LinksMenuPrincipal;
        }
    }
}