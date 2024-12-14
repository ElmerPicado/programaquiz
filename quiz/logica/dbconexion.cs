using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace quiz.logica
{
    public class dbconexion
    {
        public static SqlConnection obtenerConexion()
        {
            try
            {
                string s = System.Configuration.ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                return conexion;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error de conexión: " + ex.Message);
                return null;
            }
        }
    }
}