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
    
    public partial class lehrgang
    {
        public lehrgang()
        {
            this.lehrgangsinhalte = new HashSet<lehrgangsinhalte>();
            this.teilnehmer = new HashSet<teilnehmer>();
            this.trainer = new HashSet<trainer>();
        }
    
        public int lehrgangs_id { get; set; }
        public Nullable<System.DateTime> beginn { get; set; }
        public Nullable<System.DateTime> ende { get; set; }
        public int standort_id { get; set; }
        public string name { get; set; }
    
        public virtual ICollection<lehrgangsinhalte> lehrgangsinhalte { get; set; }
        public virtual standorte standorte { get; set; }
        public virtual ICollection<teilnehmer> teilnehmer { get; set; }
        public virtual ICollection<trainer> trainer { get; set; }
    }
}
