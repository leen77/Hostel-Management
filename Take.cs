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
    
    public partial class Take
    {
        public int book_id { get; set; }
        public string user_id { get; set; }
        public System.DateTime issue_date { get; set; }
        public System.DateTime due_date { get; set; }
        public int take_id { get; set; }
    
        public virtual Library Library { get; set; }
        public virtual UserDb UserDb { get; set; }
    }
}