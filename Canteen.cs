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
    
    public partial class Canteen
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Canteen()
        {
            this.User_Canteen = new HashSet<User_Canteen>();
        }
    
        public int item_id { get; set; }
        public string item_name { get; set; }
        public decimal item_money { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<User_Canteen> User_Canteen { get; set; }
    }
}