﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Impairement.Models.InstitutionModels
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class InstitutionEntities : DbContext
    {
        public InstitutionEntities()
            : base("name=InstitutionEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<account> accounts { get; set; }
        public virtual DbSet<branch> branches { get; set; }
        public virtual DbSet<creditofficer> creditofficers { get; set; }
        public virtual DbSet<customer> customers { get; set; }
        public virtual DbSet<group> groups { get; set; }
        public virtual DbSet<impairement> impairements { get; set; }
        public virtual DbSet<loanheader> loanheaders { get; set; }
        public virtual DbSet<loanline> loanlines { get; set; }
        public virtual DbSet<lossdefaultpersector> lossdefaultpersectors { get; set; }
        public virtual DbSet<macroeconomicfactor> macroeconomicfactors { get; set; }
        public virtual DbSet<product> products { get; set; }
        public virtual DbSet<purpose> purposes { get; set; }
        public virtual DbSet<recovery> recoveries { get; set; }
        public virtual DbSet<region> regions { get; set; }
        public virtual DbSet<sector> sectors { get; set; }
        public virtual DbSet<security> securities { get; set; }
        public virtual DbSet<subsector> subsectors { get; set; }
        public virtual DbSet<subsubsector> subsubsectors { get; set; }
        public virtual DbSet<writtenoff> writtenoffs { get; set; }
    }
}
