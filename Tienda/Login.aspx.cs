using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class Login : System.Web.UI.Page
    {
        int credenciales = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        void IngresarNormal()
        {
            using (TIENDA_PRODUCTOSEntities contextoDB = new TIENDA_PRODUCTOSEntities())
            {
                try
                {
                    foreach(var usuario in contextoDB.USUARIOS)
                    {
                        if(usuario.NOMBRE_USUARIO == CajaUsuario.Text && usuario.CONTRASENNA == CajaContrasenna.Text)
                        {
                            Page.Session["TIPO_USUARIO"] = usuario.TIPO_USUARIO;
                            credenciales = 1;
                        }
                    }
                }
                catch
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sr1", "Swal.fire('Usuario o contraseña incorrecta')", true);
                }
            }
        }

        void IngresarAdministrador()
        {
            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                try
                {
                    foreach (var administrador in ContextoDB.ADMINISTRADORES)
                    {
                        if (administrador.NOMBRE_USUARIO_ADMIN == CajaUsuario.Text && administrador.CONTRASENNA_ADMIN == CajaContrasenna.Text)
                        {
                            Page.Session["TIPO_USUARIO"] = administrador.TIPO_USUARIO;
                            credenciales = 1;
                        }
                    }
                }
                catch
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sr1", "Swal.fire('Usuario o contraseña incorrecta')", true);
                }
            }
        }

        void Validacion()
        {
            if (credenciales == 1)
            {
                var Rol = Session["TIPO_USUARIO_ADMIN"].ToString();

                switch (Rol)
                {
                    case "Normal":
                        Response.Redirect("/PaginaPrincipal.aspx");
                        break;

                    case "Administrador":
                        Response.Redirect("/PaginaPrincipal.aspx");
                        break;
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sr1", "Swal.fire('Credenciales Incorrectos, intente de nuevo.')", true);
            }
        }

        protected void BotonIniciarSesion_Click(object sender, EventArgs e)
        {
            IngresarNormal();
            IngresarAdministrador();
            Validacion();
        }
    }
}