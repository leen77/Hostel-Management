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
    
    public partial class Room
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Room()
        {
            this.Allocateds = new HashSet<Allocated>();
        }
    
        public int room_no { get; set; }
        public int room_capacity { get; set; }
        public int floor { get; set; }
        public int slots_available { get; set; }
        public decimal room_price { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Allocated> Allocateds { get; set; }
    }
}
