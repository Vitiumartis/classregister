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
    
    public partial class lehrgangsinhalte_themen
    {
        public int lehrgangsinhalt_themen_id { get; set; }
        public int lehrgangsinhalte_id { get; set; }
        public int themen_id { get; set; }
    
        public virtual lehrgangsinhalte lehrgangsinhalte { get; set; }
        public virtual themen themen { get; set; }
    }
}