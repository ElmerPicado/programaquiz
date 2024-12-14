using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.Analytics.Interfaces;
using Microsoft.Analytics.Types.Sql;

namespace quiz.modelo
{
    internal class escuela
    {
        public static int EscuelaID { get; set; }
        public static string SchoolName { get; set; }
        public static string Descripcion { get; set; }
        public static string Address { get; set; }
        public static string Phone { get; set; }
        public static string PostCode { get; set; }
        public static string PostAddress { get; set; }
    }
}