﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TIENDA_PRODUCTOSEntities : DbContext
    {
        public TIENDA_PRODUCTOSEntities()
            : base("name=TIENDA_PRODUCTOSEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<ADMINISTRADORE> ADMINISTRADORES { get; set; }
        public virtual DbSet<METODO_PAGO> METODO_PAGO { get; set; }
        public virtual DbSet<USUARIO_ROL> USUARIO_ROL { get; set; }
        public virtual DbSet<USUARIO> USUARIOS { get; set; }
        public virtual DbSet<PRODUCTO> PRODUCTOS { get; set; }
    }
}
