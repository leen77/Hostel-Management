//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectHMS
{
    using System;
    using System.Collections.Generic;
    
    public partial class Laundry
    {
        public int laundry_id { get; set; }
        public string user_id { get; set; }
        public int total_items { get; set; }
        public decimal laundry_money { get; set; }
        public System.DateTime laundry_date { get; set; }
        public string laundry_status { get; set; }
    
        public virtual UserDb UserDb { get; set; }
    }
}
