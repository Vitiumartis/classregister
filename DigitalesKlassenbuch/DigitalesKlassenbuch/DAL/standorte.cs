//------------------------------------------------------------------------------
// <auto-generated>
//     Der Code wurde von einer Vorlage generiert.
//
//     Manuelle Änderungen an dieser Datei führen möglicherweise zu unerwartetem Verhalten der Anwendung.
//     Manuelle Änderungen an dieser Datei werden überschrieben, wenn der Code neu generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DigitalesKlassenbuch.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class standorte
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public standorte()
        {
            this.lehrgang = new HashSet<lehrgang>();
        }
    
        public int standort_id { get; set; }
        public string straße { get; set; }
        public string ort { get; set; }
        public string plz { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<lehrgang> lehrgang { get; set; }
    }
}