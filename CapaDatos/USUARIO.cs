//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CapaDatos
{
    using System;
    using System.Collections.Generic;
    
    public partial class USUARIO
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public USUARIO()
        {
            this.METODO_PAGO = new HashSet<METODO_PAGO>();
            this.USUARIO_ROL = new HashSet<USUARIO_ROL>();
        }
    
        public int ID_USUARIO { get; set; }
        public string CORREO_ELECTRONICO { get; set; }
        public string NOMBRE_USUARIO { get; set; }
        public string NOMBRE { get; set; }
        public string APELLIDO_1_USUARIO { get; set; }
        public string APELLIDO_2_USUARIO { get; set; }
        public string TELEFONO_USUARIO { get; set; }
        public string CONTRASENNA { get; set; }
        public string TIPO_USUARIO { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<METODO_PAGO> METODO_PAGO { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<USUARIO_ROL> USUARIO_ROL { get; set; }
    }
}
