//------------------------------------------------------------------------------
// <auto-generated>
//    Dieser Code wurde aus einer Vorlage generiert.
//
//    Manuelle Änderungen an dieser Datei führen möglicherweise zu unerwartetem Verhalten Ihrer Anwendung.
//    Manuelle Änderungen an dieser Datei werden überschrieben, wenn der Code neu generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DigitalesKlassenbuch.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class trainer
    {
        public trainer()
        {
            this.lehrgangsinhalte = new HashSet<lehrgangsinhalte>();
            this.lehrgang = new HashSet<lehrgang>();
        }
    
        public int trainer_id { get; set; }
        public string vorname { get; set; }
        public string nachname { get; set; }
    
        public virtual ICollection<lehrgangsinhalte> lehrgangsinhalte { get; set; }
        public virtual ICollection<lehrgang> lehrgang { get; set; }
    }
}
