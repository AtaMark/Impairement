//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class writtenoff
    {
        public int id_written_off { get; set; }
        public Nullable<decimal> os_balance { get; set; }
        public string WrittenOffcol { get; set; }
        public string customer_number { get; set; }
        public string application_id { get; set; }
        public string account_id { get; set; }
        public int branch_id { get; set; }
    
        public virtual account account { get; set; }
        public virtual branch branch { get; set; }
        public virtual customer customer { get; set; }
        public virtual loanheader loanheader { get; set; }
    }
}