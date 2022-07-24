﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;

namespace Tienda
{
    public partial class MantenimientoAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarAdministradores();
            }
        }

        void CargarAdministradores()
        {
            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                var ListadoAdministradores = ContextoDB.ADMINISTRADORE.Where(s => s.TIPO_USUARIO == "Administrador").ToList();

                if (ListadoAdministradores.Count >= 0)
                {
                    GridAdministrador.DataSource = ListadoAdministradores;
                    GridAdministrador.DataBind();
                }
                else
                {
                    ADMINISTRADORE objAdministrador = new ADMINISTRADORE();
                    ListadoAdministradores.Add(objAdministrador);
                    GridAdministrador.DataSource = ListadoAdministradores;
                    GridAdministrador.DataBind();
                    GridAdministrador.Rows[0].Cells.Clear();
                    GridAdministrador.Rows[0].Cells.Add(new TableCell());
                    GridAdministrador.Rows[0].Cells[0].ColumnSpan = 5;
                    GridAdministrador.Rows[0].Cells[0].Text = "No hay administradores registrados";
                    GridAdministrador.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center; 
                }
            }
        }

        int Validar()
        {
            int respuesta = 0;

            if (String.IsNullOrEmpty((GridAdministrador.FooterRow.FindControl("txt_footer_UsuarioAdmin") as TextBox).Text))
            {
                lblCamposNulos.Visible = true;
            }
            else
            {
                respuesta = 1;
            }
            return (respuesta);
        }

        protected void GridAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridAdmin_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridAdministrador.EditIndex = e.NewEditIndex;
            CargarAdministradores();
        }

        protected void GridAdmin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String AdministradorId = Convert.ToString(GridAdministrador.DataKeys[e.RowIndex].Value);

            using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
            {
                ADMINISTRADORE obj = ContextoDB.ADMINISTRADORE.First(x => x.CORREO_ELECTRONICO_ADMIN == AdministradorId);
                ContextoDB.ADMINISTRADORE.Remove(obj);
                ContextoDB.SaveChanges();
                lblCamposNulos.Text = "Eliminado correctamente";
                CargarAdministradores();
            }

        }

        protected void GridAdmin_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int ValidarFooter = Validar();

            if(e.CommandName.Equals("AddNew") && ValidarFooter == 1)
            {
                ADMINISTRADORE objAdministrador = new ADMINISTRADORE();

                objAdministrador.NOMBRE_USUARIO_ADMIN = (GridAdministrador.FooterRow.FindControl("txt_footer_UsuarioAdmin") as TextBox).Text.Trim();
                objAdministrador.NOMBRE_ADMIN = (GridAdministrador.FooterRow.FindControl("txt_footer_NombreAdmin") as TextBox).Text.Trim();
                objAdministrador.APELLIDO_1_ADMIN = (GridAdministrador.FooterRow.FindControl("txt_footer_Apellido1Admin") as TextBox).Text.Trim();
                objAdministrador.APELLIDO_2_ADMIN = (GridAdministrador.FooterRow.FindControl("txt_footer_Apellido2Admin") as TextBox).Text.Trim();
                objAdministrador.CONTRASENNA_ADMIN = (GridAdministrador.FooterRow.FindControl("txt_footer_Contrasenna_Admin") as TextBox).Text.Trim();
                objAdministrador.CORREO_ELECTRONICO_ADMIN = (GridAdministrador.FooterRow.FindControl("txt_footer_CorreoAdmin") as TextBox).Text.Trim();
                objAdministrador.TELEFONO_ADMIN = (GridAdministrador.FooterRow.FindControl("txt_footer_Telefono_Admin") as TextBox).Text.Trim();
                objAdministrador.TIPO_USUARIO = "Administrador";

                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    ContextoDB.ADMINISTRADORE.Add(objAdministrador);
                    ContextoDB.SaveChanges();
                    GridAdministrador.EditIndex = -1;
                    CargarAdministradores();
                }
                lblCamposNulos.Visible = false;
            }
        }

        protected void GridAdmin_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridAdministrador.EditIndex = -1;
            CargarAdministradores();
        }

        protected void GridAdmin_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridAdministrador.Rows[e.RowIndex];

            TextBox txtIdAdmin = row.FindControl("Txt_IdAdministrador") as TextBox;
            TextBox txtNombreUsuarioAdmnin = row.FindControl("Txt_Nombre_Usuario_Admin") as TextBox;
            TextBox txtContrasennaAdmin = row.FindControl("Txt_Contrasenna_Admin") as TextBox;
            TextBox txtTelefono_Admin = row.FindControl("Txt_Telefono_Admin") as TextBox;
            TextBox txtNombreAdmin = row.FindControl("Txt_Nombre_Administador") as TextBox;
            TextBox txtApellido1Admin = row.FindControl("Txt_Apellido_Admin_1") as TextBox;
            TextBox txtApellido2Admin = row.FindControl("Txt_Apellido_Admin_2") as TextBox;
            TextBox txtCorreoAdmin = row.FindControl("Txt_Correo_Administrador") as TextBox;
            TextBox txtTipoAdmin = row.FindControl("Txt_Tipo_Administrador") as TextBox;

            if (txtIdAdmin != null &&
               txtNombreUsuarioAdmnin != null &&
               txtContrasennaAdmin != null &&
               txtTelefono_Admin != null &&
               txtNombreAdmin != null &&
               txtApellido1Admin != null &&
               txtApellido2Admin != null &&
               txtCorreoAdmin != null &&
               txtTipoAdmin != null)
            {
                using (TIENDA_PRODUCTOSEntities ContextoDB = new TIENDA_PRODUCTOSEntities())
                {
                    String IdAdmin = Convert.ToString(GridAdministrador.DataKeys[e.RowIndex].Value);

                    ADMINISTRADORE obj = ContextoDB.ADMINISTRADORE.First(x => x.CORREO_ELECTRONICO_ADMIN == IdAdmin);

                    obj.NOMBRE_USUARIO_ADMIN = txtNombreUsuarioAdmnin.Text;
                    obj.CORREO_ELECTRONICO_ADMIN = txtCorreoAdmin.Text;
                    obj.TELEFONO_ADMIN = txtTelefono_Admin.Text;
                    obj.NOMBRE_ADMIN = txtNombreAdmin.Text;
                    obj.APELLIDO_1_ADMIN = txtApellido1Admin.Text;
                    obj.APELLIDO_2_ADMIN = txtApellido2Admin.Text;
                    obj.CONTRASENNA_ADMIN = txtContrasennaAdmin.Text;
                    obj.TIPO_USUARIO = txtTipoAdmin.Text;
                    
                    ContextoDB.SaveChanges();
                    lblCamposNulos.Text = "Administrador actualizado";
                    GridAdministrador.EditIndex = -1;
                    CargarAdministradores();
                }
            }
        }
    }
}