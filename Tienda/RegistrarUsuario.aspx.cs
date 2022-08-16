using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        int Creacion_Cuenta = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region "Método para la creación de un usuario"
        void Registrar_Usuario()
        {
            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                USUARIOS oUsuario = new USUARIOS();

                oUsuario.NOMBRE_USUARIO = ReCajaNomUsuario.Text;
                oUsuario.NOMBRE = ReCajaNombre.Text;
                oUsuario.APELLIDO_1_USUARIO = ReCajaApellido1.Text;
                oUsuario.APELLIDO_2_USUARIO = ReCajaApellido2.Text;
                oUsuario.CORREO_ELECTRONICO = ReCajaCorreo.Text;
                oUsuario.CONTRASENNA = ReCajaContrasenna.Text;
                oUsuario.TELEFONO_USUARIO = ReCajaTelefono.Text;
                oUsuario.TIPO_USUARIO = "Normal";

                ContextoDB.USUARIOS.Add(oUsuario);
                ContextoDB.SaveChanges();
                Creacion_Cuenta = 1;
            }
        }
        #endregion

        #region "Método para validar la creación del usuario"
        void ValidarCreacionCuenta()
        {
            if (Creacion_Cuenta == 1)
            {
                Response.Redirect("/Login.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Error al crear la cuenta')", true);
            }
        }
        #endregion

        #region "Llamado a los métodos anteriores"
        protected void BotonRegistrarUsuario_Click(object sender, EventArgs e)
        {
            Registrar_Usuario();
            ValidarCreacionCuenta();
        }
        #endregion 
    }
}