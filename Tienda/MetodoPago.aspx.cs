using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class MetodoPago : System.Web.UI.Page
    {
        int Creacion_Metodo_Pago = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarMetodoPago();
                ValidacionIngresoMetodoPago();
            }
        }

        void CrearMetodoPago()
        {
            try
            {
                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    METODO_PAGO oMetodoPago = new METODO_PAGO();

                    string CorreoUsuario = (string)Page.Session["CORREO_ELECTRONICO"];

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
            catch(Exception ex)
            {
                lblCamposPagoNulo.Visible = true;
                lblCamposPagoNulo.Text = ex.Message;  
            }
        }

        void CargarMetodoPago()
        {
            try
            {
                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    string CorreoUsuario = (string)Page.Session["CORREO_ELECTRONICO"];

                    var ListadoMetodoPago = ContextoDB.METODO_PAGO.Where(s => s.TARJETA_ACTICA == true && s.CORREO_ELECTRONICO == CorreoUsuario).ToList();

                    if (ListadoMetodoPago.Count > 0)
                    {
                        GridMetodoPago.DataSource = ListadoMetodoPago;
                        GridMetodoPago.DataBind();
                    }
                    else
                    {
                        METODO_PAGO objPago = new METODO_PAGO();
                        ListadoMetodoPago.Add(objPago);

                        GridMetodoPago.DataSource = ListadoMetodoPago;
                        GridMetodoPago.DataBind();
                        GridMetodoPago.Rows[0].Cells.Clear();
                        GridMetodoPago.Rows[0].Cells.Add(new TableCell());
                        GridMetodoPago.Rows[0].Cells[0].ColumnSpan = 5;
                        GridMetodoPago.Rows[0].Cells[0].Text = "No hay métodos de pago registrados";
                        GridMetodoPago.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                    }
                    GridMetodoPago.EditIndex = -1;
                }
            }
            catch(Exception ex)
            {
                lblCamposPagoNulo.Visible = true;
                lblCamposPagoNulo.Text = ex.Message;
            }
        }

        void ValidacionIngresoMetodoPago()
        {
            try
            {
                if (Creacion_Metodo_Pago == 1)
                {
                    Response.Redirect("/MetodoPago.aspx");
                }
            }
            catch(Exception ex)
            {
                lblCamposPagoNulo.Visible = true;
                lblCamposPagoNulo.Text = "Complete los campos solocitados " + ex.Message;
            }
                        
        }

        protected void IngresarMetodoPago_Click(object sender, EventArgs e)
        {
            CrearMetodoPago();
            ValidacionIngresoMetodoPago();
        }

        protected void GridTarjeta_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            
        }

        protected void GridTarjeta_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
        }

        protected void GridTarjeta_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                METODO_PAGO objPago = new METODO_PAGO();

                string usuario = Request.QueryString["USUARIO"];

                objPago.NUMERO_TARJETA = Int64.Parse((GridMetodoPago.DataKeys[e.RowIndex].Value.ToString()));

                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    METODO_PAGO aux = ContextoDB.METODO_PAGO.Find(objPago.NUMERO_TARJETA);

                    ContextoDB.METODO_PAGO.Remove(aux);
                    ContextoDB.SaveChanges();
                    CargarMetodoPago();
                    lblCamposPagoNulo.Visible = true;
                    lblCamposPagoNulo.Text = "Eliminado correctamente";
                }
            }
            catch(Exception ex)
            {
                lblCamposPagoNulo.Text = ex.Message;
            }
        }

        protected void GridTarjeta_RowEditing(object sender, GridViewEditEventArgs e)
        {
            
        }

        protected void GridTarjeta_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridTarjeta_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}