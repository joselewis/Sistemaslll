using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using System.Drawing;
using System.Data.SqlClient;
using System.Data;

namespace Tienda
{
    public partial class RegistroProductos : System.Web.UI.Page
    {
        int ProductoIngresado = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #region "Método para registrar un producto"
        void RegistrarProducto()
        {
            try
            {
                using (TIENDA_PRODUCTOSEntities ContextoBD = new TIENDA_PRODUCTOSEntities())
                {
                    PRODUCTOS oProducto = new PRODUCTOS();

                    oProducto.CODIGO_PRODUCTO = Convert.ToInt32(CajaCodigoProducto.Text);
                    oProducto.NOMBRE_PRODUCTO = CajaNombreProducto.Text;
                    oProducto.PRECIO_PRODUCTO = Convert.ToInt32(CajaPrecioProducto.Text);
                    oProducto.CANTIDAD_PRODUCTO = Convert.ToInt32(CajaCantidadProducto.Text);
                    oProducto.DESCRIPCION_PRODUCTO = CajaDescripcionProducto.Text;
                    oProducto.TIPO_PRODUCTO = CajaTipoProducto.Text;
                    oProducto.MARCA = CajaMarcaProducto.Text;
                    oProducto.PRODUCTO_ACTIVO = CheckBoxProductoActivo.Checked;
                    oProducto.IMAGEN = ImagenProducto.FileBytes;

                    ContextoBD.PRODUCTOS.Add(oProducto);
                    ContextoBD.SaveChanges();

                    ProductoIngresado = 1;
                }
            }
            catch(Exception ex)
            {
                lblAlamacenado.Text = ex.Message;
            }
        }
        #endregion

        #region "Método para validar el registro del producto"
        void ValidacionIngresoProducto()
        {
            if (ProductoIngresado == 1)
            { 
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sr1", "Swal.fire('Producto ingresado correctamente.')", true);
                Response.Redirect("/MantenimientoProductos.aspx");
            }
        }
        #endregion

        #region "Llamado a los métodos anteriores"
        protected void Btn_Registar_Producto_Click(object sender, EventArgs e)
        {
            RegistrarProducto();
            ValidacionIngresoProducto();
        }
        #endregion
    }
}