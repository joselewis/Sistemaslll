using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class MantenimientoProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProductos();
            }
        }

        void CargarProductos()
        {
            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                var ListadoProductos = ContextoDB.PRODUCTOS.Where(s => s.PRODUCTO_ACTIVO == true).ToList();
                
                if(ListadoProductos.Count >= 0)
                {
                    GridProductos.DataSource = ListadoProductos;
                    GridProductos.DataBind();
                }
                else
                {
                    PRODUCTOS objProducto = new PRODUCTOS();
                    ListadoProductos.Add(objProducto);
                    GridProductos.DataSource = ListadoProductos;
                    GridProductos.DataBind();
                    GridProductos.Rows[0].Cells.Clear();
                    GridProductos.Rows[0].Cells.Add(new TableCell());
                    GridProductos.Rows[0].Cells[0].ColumnSpan = 5;
                    GridProductos.Rows[0].Cells[0].Text = "No hay productos registrados";
                    GridProductos.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                }
            }
        }

        int Validar()
        {
            int respuesta = 0;

            if (String.IsNullOrEmpty((GridProductos.FooterRow.FindControl("txt_footer_Producto") as TextBox).Text)) { 
                lblCamposNulos.Visible = true;
            }
            else
            {
                respuesta = 1;
            }
            return (respuesta);
        }

        protected void GridProducto_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridProductos.EditIndex = -1;
            CargarProductos();
        }

        protected void GridProducto_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int ValidarFooter = Validar();

            if (e.CommandName.Equals("AddNew") && ValidarFooter == 1)
            {
                PRODUCTOS objProducto = new PRODUCTOS();

                objProducto.CODIGO_PRODUCTO = Convert.ToInt32((GridProductos.FooterRow.FindControl("txt_footer_Codigo_Producto") as TextBox).Text.Trim());
                objProducto.NOMBRE_PRODUCTO = (GridProductos.FooterRow.FindControl("txt_footer_Producto") as TextBox).Text.Trim();
                objProducto.PRECIO_PRODUCTO = Convert.ToInt32((GridProductos.FooterRow.FindControl("txt_footer_Precio_Producto") as TextBox).Text.Trim());
                objProducto.CANTIDAD_PRODUCTO = Convert.ToInt32((GridProductos.FooterRow.FindControl("txt_footer_Cantidad_Producto") as TextBox).Text.Trim());
                objProducto.DESCRIPCION_PRODUCTO = (GridProductos.FooterRow.FindControl("txt_footer_Descripcion_Producto") as TextBox).Text.Trim();
                objProducto.TIPO_PRODUCTO = (GridProductos.FooterRow.FindControl("txt_footer_Tipo_Producto") as TextBox).Text.Trim();
                //objProducto.IMAGEN = (GridProductos.FooterRow.FindControl("txt_footer_Imagen_Producto") as TextBox).Text.Trim();
                objProducto.MARCA = (GridProductos.FooterRow.FindControl("txt_footer_Marca_Producto") as TextBox).Text.Trim();

                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    ContextoDB.PRODUCTOS.Add(objProducto);
                    ContextoDB.SaveChanges();
                    GridProductos.EditIndex = -1;
                    CargarProductos();
                }
                lblCamposNulos.Visible = false;
            }
        }

        protected void GridProducto_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Productos = Convert.ToInt32(GridProductos.DataKeys[e.RowIndex].Value);

            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                PRODUCTOS obj = ContextoDB.PRODUCTOS.First(x => x.CODIGO_PRODUCTO == Productos);
                ContextoDB.PRODUCTOS.Remove(obj);
                ContextoDB.SaveChanges();
                lblCamposNulos.Text = "Eliminado correctamente";
                CargarProductos();
            }
        }

        protected void GridProducto_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridProductos.EditIndex = e.NewEditIndex;
            CargarProductos();
        }

        protected void GridProducto_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridProductos.Rows[e.RowIndex];

            TextBox txtIdProducto = row.FindControl("Txt_IdProducto") as TextBox;
            TextBox txtNombreProducto = row.FindControl("Txt_Nombre_Producto") as TextBox;
            TextBox txtCodigoProducto= row.FindControl("Txt_Codigo_Producto") as TextBox;
            TextBox txtPrecioProducto = row.FindControl("Txt_Precio_Producto") as TextBox;
            TextBox txtCantidadProducto = row.FindControl("Txt_Cantidad_Producto") as TextBox;
            TextBox txtDescripcionProducto = row.FindControl("Txt_Descripcion_Producto") as TextBox;
            TextBox txtImagenProducto = row.FindControl("Txt_Imagen_Producto") as TextBox;
            TextBox txtMarcaProducto = row.FindControl("Txt_Marca_Producto") as TextBox;
            TextBox txtTipoProducto = row.FindControl("Txt_Tipo_Producto") as TextBox;

            if (txtIdProducto != null &&
               txtNombreProducto != null &&
               txtCodigoProducto != null &&
               txtPrecioProducto != null &&
               txtCantidadProducto != null &&
               txtDescripcionProducto != null &&
               txtImagenProducto != null &&
               txtMarcaProducto != null &&
               txtTipoProducto != null)
            {
                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    int IdProducto = Convert.ToInt32(GridProductos.DataKeys[e.RowIndex].Value);

                    PRODUCTOS obj = ContextoDB.PRODUCTOS.First(x => x.CODIGO_PRODUCTO == IdProducto);

                    obj.NOMBRE_PRODUCTO = txtNombreProducto.Text;
                    obj.CODIGO_PRODUCTO = Convert.ToInt32(txtCodigoProducto.Text);
                    obj.PRECIO_PRODUCTO = Convert.ToInt32(txtPrecioProducto.Text);
                    obj.CANTIDAD_PRODUCTO = Convert.ToInt32(txtCantidadProducto.Text);
                    obj.DESCRIPCION_PRODUCTO = txtDescripcionProducto.Text;
                    //obj.IMAGEN = txtImagenProducto.Text;
                    obj.MARCA = txtMarcaProducto.Text;
                    obj.TIPO_PRODUCTO = txtTipoProducto.Text;

                    ContextoDB.SaveChanges();
                    lblCamposNulos.Text = "Producto actualizado";
                    GridProductos.EditIndex = -1;
                    CargarProductos();
                }
            }
        }

        protected void GridProducto_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonExportarExcel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = "application/ms-excel";
                Response.AddHeader("content-disposition", "attachment; filename = Productos.xls");
                Response.Charset = "";
                StringWriter sw = new StringWriter();
                HtmlTextWriter htw = new HtmlTextWriter(sw);
                GridProductos.RenderControl(htw);
                Response.Output.Write(sw.ToString());
                Response.End();
            }
            catch(Exception ex)
            {
                lblCamposNulos.Text = ex.Message;
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }
    }
}