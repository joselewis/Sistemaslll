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

            //Filtra el tipo de usuario para redirigirlo según su tipo
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

        #region "Método para definir el menú dependiendo del tipo de usuario que accede al sistema"
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
                                          "</a>" +

                                          "<a class='nav-link' href='CarritoCompras.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Carrito" +
                                          "</a>"
                                          ;
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

                                          "<a class='nav-link' href='RegistroProductos.aspx'>" +
                                          "<div class='sb-nav-link-icon'>" +
                                          "<i class='fas fa-chart-area'>" +
                                          "</i>" +
                                          "</div>" +
                                          "Registrar productos" +
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
        #endregion

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {

        }
    }
}