using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CapaDatos;

namespace Tienda
{
    public partial class PaginaPrincipal1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"DATA SOURCE = DESKTOP-G1MPPBN; INITIAL CATALOG = TIENDA_PRODUCTOS; USER = JL; PASSWORD = 12345;");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM PRODUCTOS";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();
            con.Close();

            //ConsultarImagen(); 
        }

        //protected void ConsultarImagen()
        //{
        //    try
        //    {
        //        SqlConnection conexion = new SqlConnection("DATA SOURCE = DESKTOP-G1MPPBN; INITIAL CATALOG = TIENDA_PRODUCTOS; USER = JL; PASSWORD = 12345;");
        //        SqlCommand cmd = new SqlCommand();
        //        cmd.CommandText = "SELECT NOMBRE_PRODUCTO,PRECIO_PRODUCTO,CANTIDAD_PRODUCTO,DESCRIPCION_PRODUCTO,TIPO_PRODUCTO,IMAGEN,MARCA FROM PRODUCTOS ORDER BY ID_PRODUCTO ASC";
        //        cmd.CommandType = CommandType.Text;
        //        cmd.Connection = conexion;
        //        conexion.Open();

        //        DataTable ImagenesDB = new DataTable();
        //        ImagenesDB.Load(cmd.ExecuteReader());

        //        d1.DataSource = ImagenesDB;
        //        d1.DataBind();
        //        conexion.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        lblError.Text = ex.Message;
        //    }
        //}

        //protected void BotonAgregarAlCarrito_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("/ProductoEspecifico.aspx");
        //}
    }
}