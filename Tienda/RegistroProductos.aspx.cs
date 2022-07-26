using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class RegistroProductos : System.Web.UI.Page
    {
        int ProductoIngresado = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        void RegistrarProducto()
        {
            using (TIENDA_PRODUCTOSEntities ContextoBD = new TIENDA_PRODUCTOSEntities())
            {
                PRODUCTO oProducto = new PRODUCTO();

                oProducto.CODIGO_PRODUCTO = Convert.ToInt32(CajaCodigoProducto.Text);
                oProducto.NOMBRE_PRODUCTO = CajaNombreProducto.Text;
                oProducto.PRECIO_PRODUCTO = Convert.ToInt32(CajaPrecioProducto.Text);
                oProducto.CANTIDAD_PRODUCTO = Convert.ToInt32(CajaCantidadProducto.Text);
                oProducto.DESCRIPCION_PRODUCTO = CajaDescripcionProducto.Text;
                oProducto.TIPO_PRODUCTO = CajaTipoProducto.Text;
                oProducto.MARCA = CajaMarcaProducto.Text;
                oProducto.PRODUCTO_ACTIVO = CheckBoxProductoActivo.Checked;
                oProducto.IMAGEN = CajaImagenProducto.Text.ToString();

                ContextoBD.PRODUCTOS.Add(oProducto);
                ContextoBD.SaveChanges();

                ProductoIngresado = 1;
            }
        }

        void ValidacionIngresoProducto()
        {
            if(ProductoIngresado == 1)
            {
                //Page.ClientScript.RegisterStartupScript(Page.GetType(), "Desea añadir otro producto?", "<script language = 'javascript'> alert('" + Mensaje + "');</script>");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "sr1", "Swal.fire('Producto ingresado correctamente.')", true);
                Response.Redirect("/MantenimientoProductos.aspx");
            }
        }

        protected void Btn_Registar_Producto_Click(object sender, EventArgs e)
        {
            RegistrarProducto();
            ValidacionIngresoProducto();
        }
    }
}