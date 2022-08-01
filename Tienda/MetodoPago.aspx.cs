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
            }
        }

        void CrearMetodoPago()
        {
            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                METODO_PAGO oMetodoPago = new METODO_PAGO();

                oMetodoPago.NUMERO_TARJETA = Convert.ToInt64(CajaNumeroTarjeta.Text);
                oMetodoPago.NUMERO_EXPIRA_1 = Convert.ToInt32(CajaMesTarjeta.Text);
                oMetodoPago.NUMERO_EXPIRA_2 = Convert.ToInt32(CajaAnnoTarjeta.Text);
                oMetodoPago.CORREO_ELECTRONICO = Session["CORREO_ELECTRONICO"].ToString();

                ContextoDB.METODO_PAGO.Add(oMetodoPago);
                ContextoDB.SaveChanges();

                Creacion_Metodo_Pago = 1;
            }      
        }

        void CargarMetodoPago()
        {
            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                string usuario = Request.QueryString["CORREO_ELECTRONICO"];

                var ListadoMetodoPago = ContextoDB.METODO_PAGO.ToList();

                if (ListadoMetodoPago.Count > 0)
                {
                    GridMetodoPago.DataSource= ListadoMetodoPago;
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

        int Validar()
        {
            int respuesta = 0;

            if(String.IsNullOrEmpty((GridMetodoPago.FooterRow.FindControl("txt_footer_Numero_Tarjeta") as TextBox).Text))
            {
                lblCamposNulos.Visible = true;
            }
            else
            {
                respuesta = 1;
            }

            return (respuesta);
        }

        protected void IngresarMetodoPago_Click(object sender, EventArgs e)
        {
            CrearMetodoPago();
        }

        protected void GridTarjeta_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridMetodoPago.EditIndex = -1;
            CargarMetodoPago();
            lblCamposNulos.Visible = false;
        }

        protected void GridTarjeta_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int ValidarFooter = Validar();

            if (e.CommandName.Equals("AddNew") && ValidarFooter == 1)
            {
                METODO_PAGO objPago = new METODO_PAGO();
                string usuario = Request.QueryString["CORREO_ELECTRONICO"];

                objPago.CORREO_ELECTRONICO = usuario;
                objPago.NUMERO_TARJETA = Convert.ToInt64((GridMetodoPago.FooterRow.FindControl("txt_footer_Numero_Tarjeta") as TextBox).Text.Trim());
                objPago.NUMERO_EXPIRA_1 = Convert.ToInt32((GridMetodoPago.FooterRow.FindControl("txt_footer_Tarjeta_Mes") as TextBox).Text.Trim());
                objPago.NUMERO_EXPIRA_2 = Convert.ToInt32((GridMetodoPago.FooterRow.FindControl("txt_footer_Tarjeta_Anno") as TextBox).Text.Trim());


                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    ContextoDB.METODO_PAGO.Add(objPago);
                    ContextoDB.SaveChanges();
                    GridMetodoPago.EditIndex = -1;
                    CargarMetodoPago();
                }

                lblCamposNulos.Visible = false;
            }
        }

        protected void GridTarjeta_RowDeleting(object sender, GridViewDeleteEventArgs e)
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
                lblCamposNulos.Text = "Eliminado correctamente";
            }
        }

        protected void GridTarjeta_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridMetodoPago.EditIndex = e.NewEditIndex;
            CargarMetodoPago();
            lblCamposNulos.Visible = false;
        }

        protected void GridTarjeta_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

        protected void GridTarjeta_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}