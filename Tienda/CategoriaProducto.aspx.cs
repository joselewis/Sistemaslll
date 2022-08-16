using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Tienda
{

    public partial class CategoriaProducto : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"DATA SOURCE = DESKTOP-G1MPPBN; INITIAL CATALOG = TIENDA_PRODUCTOS; USER = JL; PASSWORD = 12345;");

        string tipo;
        string marca;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Muestra los productos en la página principal
            if (Request.QueryString["tipo"] == null)
            {
                Response.Redirect("/PaginaPrincipal.aspx");
            }
            else
            {
                tipo = Convert.ToString(Request.QueryString["tipo"].ToString());

                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM PRODUCTOS WHERE TIPO_PRODUCTO = " + tipo;
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                d2.DataSource = dt;
                d2.DataBind();

                con.Close();
            }
        }

        #region "Método para mostrar las imagenes de los productos disponibles"
        protected void ImagenEspecifica_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["IMAGEN"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
            }
        }
        #endregion
    }
}
