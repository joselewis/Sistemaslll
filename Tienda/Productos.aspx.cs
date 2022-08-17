using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Tienda
{
    public partial class Productos : System.Web.UI.Page
    {
        //string CadenaConexion = "DATA SOURCE = DESKTOP-G1MPPBN; CATALOG = TIENDA_PRODUCTOS; USER = JL; PASSWORD = 12345;";

        protected void Page_Load(object sender, EventArgs e)
        {
            //String de conexión a la base de datos
            SqlConnection con = new SqlConnection(@"DATA SOURCE = DESKTOP-G1MPPBN; INITIAL CATALOG = TIENDA_PRODUCTOS; USER = JL; PASSWORD = 12345;");

            //Extrae de la base de datos todos los productos y los muestra
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
        } 
    }
}