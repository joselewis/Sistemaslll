﻿using System;
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

        #region "Ingreso al sistemas para usuarios normales"
        void IngresarNormal()
        {
            using (TIENDA_PRODUCTOSEntities contextoDB = new TIENDA_PRODUCTOSEntities())
            {
                try
                {
                    foreach (var usuario in contextoDB.USUARIOS)
                    {
                        if (usuario.NOMBRE_USUARIO == CajaUsuario.Text && usuario.CONTRASENNA == CajaContrasenna.Text)
                        {
                            Page.Session["NOMBRE"] = usuario.NOMBRE + " " + usuario.APELLIDO_1_USUARIO + " " + usuario.APELLIDO_2_USUARIO;
                            Page.Session["NOMBRE_USUARIO"] = usuario.NOMBRE_USUARIO;
                            Page.Session["TIPO_USUARIO"] = usuario.TIPO_USUARIO;
                            Page.Session["CORREO_ELECTRONICO"] = usuario.CORREO_ELECTRONICO;
                            Page.Session["TELEFONO_USUARIO"] = usuario.TELEFONO_USUARIO;

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
        #endregion


        #region "Ingreso al sistemas para usuarios administradores"
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
                            Page.Session["NOMBRE_ADMIN"] = administrador.NOMBRE_ADMIN + " " + administrador.APELLIDO_1_ADMIN + " " + administrador.APELLIDO_2_ADMIN;
                            Page.Session["NOMBRE_USUARIO_ADMIN"] = administrador.NOMBRE_USUARIO_ADMIN;
                            Page.Session["TIPO_USUARIO"] = administrador.TIPO_USUARIO;
                            Page.Session["CORREO_ELECTRONICO_ADMIN"] = administrador.CORREO_ELECTRONICO_ADMIN;
                            Page.Session["TELEFONO_ADMIN"] = administrador.TELEFONO_ADMIN;
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
        #endregion

        #region "Validación del usuario"
        void Validacion()
        {
            if (credenciales == 1)
            {
                var Rol = Session["TIPO_USUARIO"].ToString();

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
        #endregion

        #region "Llamado a los métodos anteriores"
        protected void BotonIniciarSesion_Click(object sender, EventArgs e)
        {
            IngresarNormal();
            IngresarAdministrador();
            Validacion();
        }
        #endregion
    }
}