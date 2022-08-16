using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class CarritoCompras : System.Web.UI.Page
    {
        int Creacion_Metodo_Pago = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarCarrito();
                //MostrarProducto();
                ValidacionIngresoMetodoPago();
                
            }
        }

        #region "Crear método pago"
        void CrearMetodoPago()
        {
            try
            {   //Abre la conexión a la base de datos
                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    METODO_PAGO oMetodoPago = new METODO_PAGO();
                    
                    //Le asigna al usuario el método de pago
                    string CorreoUsuario = (string)Page.Session["CORREO_ELECTRONICO"];

                    //guarda el método de pago del usuario
                    oMetodoPago.NUMERO_TARJETA = Convert.ToInt64(CajaNumeroTarjeta.Text);
                    oMetodoPago.NUMERO_EXPIRA_1 = Convert.ToInt32(CajaMesTarjeta.Text);
                    oMetodoPago.NUMERO_EXPIRA_2 = Convert.ToInt32(CajaAnnoTarjeta.Text);
                    oMetodoPago.TARJETA_ACTICA = true;
                    oMetodoPago.CORREO_ELECTRONICO = CorreoUsuario;

                    ContextoDB.METODO_PAGO.Add(oMetodoPago);
                    ContextoDB.SaveChanges();

                    Creacion_Metodo_Pago = 1;
                }
            }
            catch (Exception ex)
            {
                lblCamposPagoNulo.Visible = true;
                lblCamposPagoNulo.Text = ex.Message;
            }
        }
        #endregion

        #region "Validar ingreso del método de pago"
        void ValidacionIngresoMetodoPago()
        {
            try
            {   //
                if (Creacion_Metodo_Pago == 1)
                {
                    Response.Redirect("/CarritoCompras.aspx");
                }
            }
            catch (Exception ex)
            {
                lblCamposPagoNulo.Visible = true;
                lblCamposPagoNulo.Text = "Complete los campos solocitados " + ex.Message;
            }
        }
        #endregion

        #region "Método para mostrar el carrito"

        void MostrarCarrito()
        {
            try
            {
                //Abre la conexión a la base de datos
                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    // Se obtiene la sesion del usuario
                    string CorreoUsuario = (string)Page.Session["CORREO_ELECTRONICO"];

                    var ListadoCarrito = ContextoDB.CARRITO.Where(s => s.CORREO_ELECTRONICO == CorreoUsuario && s.CARRITO_ACTIVO == true).ToList();

                    if (ListadoCarrito.Count > 0)
                    {
                        GridCarritoCompras.DataSource = ListadoCarrito;
                        GridCarritoCompras.DataBind();
                    }
                    else
                    {
                        CARRITO objCarrito = new CARRITO();
                        ListadoCarrito.Add(objCarrito);
                        
                        GridCarritoCompras.DataSource = ListadoCarrito;
                        GridCarritoCompras.DataBind();
                        GridCarritoCompras.Rows[0].Cells.Clear();
                        GridCarritoCompras.Rows[0].Cells.Add(new TableCell());
                        GridCarritoCompras.Rows[0].Cells[0].ColumnSpan = 5;
                        GridCarritoCompras.Rows[0].Cells[0].Text = "No hay producto añadidos al carrito";
                        GridCarritoCompras.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                    }
                    GridCarritoCompras.EditIndex = -1;
                }
            }
            catch(Exception ex)
            {
                lblCamposPagoNulo.Visible = true;
                lblCamposPagoNulo.Text = ex.Message;
            }    
        }
        #endregion

        #region "Metodos del grid carrito de compras"
        protected void GridCarrito_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridCarrito_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridCarrito_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        // Método que eliminnar el artículo del carrito
        protected void GridCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                CARRITO objCarrito = new CARRITO();

                // Obtiene la session del usuario
                string usuario = Request.QueryString["USUARIO"];

                objCarrito.ID_CARRITO = Int32.Parse((GridCarritoCompras.DataKeys[e.RowIndex].Value.ToString()));

                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    CARRITO aux = ContextoDB.CARRITO.Find(objCarrito.ID_CARRITO);

                    ContextoDB.CARRITO.Remove(aux);
                    ContextoDB.SaveChanges();
                    MostrarCarrito();
                    lblCamposPagoNulo.Visible = true;
                    lblCamposPagoNulo.Text = "Producto eliminado correctamente";
                }
            }
            catch (Exception ex)
            {
                lblCamposPagoNulo.Visible = true;
                lblCamposPagoNulo.Text = ex.Message;
            }
        }

        protected void GridCarrito_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridCarrito_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void IngresarMetodoPago_Click(object sender, EventArgs e)
        {
            CrearMetodoPago();
            ValidacionIngresoMetodoPago();
        }

        #endregion
    }
}