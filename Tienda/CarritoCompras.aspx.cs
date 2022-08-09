using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class CarritoCompras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarCarrito();
            }
        }
        
        void MostrarCarrito()
        {
            try
            {
                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    string CorreoUsuario = (string)Page.Session["CORREO_ELECTRONICO"];
                    //int CodigoProducto = (int)Page.Session["CODIGO_PRODUCTO"];
                    //int CodigoProducto = Convert.ToInt32(Request.QueryString["CODIGO_PRODUCTO"]);
                    //string NombreProducto = Request.QueryString["NOMBRE_PRODUCTO"];

                    var ListadoCarrito = ContextoDB.CARRITO.Where(s => s.CORREO_ELECTRONICO == CorreoUsuario &&  s.CARRITO_ACTIVO == true).ToList();

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

        protected void GridCarrito_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridCarrito_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridCarrito_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                CARRITO objCarrito = new CARRITO();

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
    }
}