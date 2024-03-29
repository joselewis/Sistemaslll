﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class RegistrarAdministrador : System.Web.UI.Page
    {
        int Creacion_Cuenta_Admin = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region "Método para registar un administrador"
        void Registrar_Administrador()
        {
            using (TIENDA_PRODUCTOSEntities ContextoBD = new TIENDA_PRODUCTOSEntities())
            {
                ADMINISTRADORES oAdministrador = new ADMINISTRADORES();

                oAdministrador.NOMBRE_USUARIO_ADMIN = ReCajaAdminNomUsuario.Text;
                oAdministrador.NOMBRE_ADMIN = ReCajaAdminNombre.Text;
                oAdministrador.APELLIDO_1_ADMIN = ReCajaAdminApellido1.Text;
                oAdministrador.APELLIDO_2_ADMIN = ReCajaAdminApellido2.Text;
                oAdministrador.CONTRASENNA_ADMIN = ReCajaAdminContrasenna.Text;
                oAdministrador.TELEFONO_ADMIN = ReCajaTelefono.Text;
                oAdministrador.CORREO_ELECTRONICO_ADMIN = ReCajaAdminCorreo.Text;
                oAdministrador.TIPO_USUARIO = "Administrador";

                ContextoBD.ADMINISTRADORES.Add(oAdministrador);
                ContextoBD.SaveChanges();
                Creacion_Cuenta_Admin = 1;
            }
        }
        #endregion

        #region "Método para validar la creación de la cuenta"
        void ValidarCreacionCuentaAdmin()
        {
            if(Creacion_Cuenta_Admin == 1)
            {
                Response.Redirect("/MantenimientoAdmin.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Error ingresar administrador')", true);
            }
        }
        #endregion

        #region "Llamada a los métodos anteriores"
        protected void Boton_Ingresar_Admin_Click(object sender, EventArgs e)
        {
            Registrar_Administrador();
            ValidarCreacionCuentaAdmin();
        }
        #endregion
    }
}