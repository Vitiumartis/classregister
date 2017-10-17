using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DigitalesKlassenbuch.DAL;
using System.Diagnostics;


namespace DigitalesKlassenbuch.Dienste
{
    public partial class Lehrgansinhalte : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
         //       TextBoxVon.Text = DateTime.Today.ToShortDateString();
            }

            using (ClasslogEntities context = new ClasslogEntities())
            {
                var standortId = (from s in context.standorte where s.ort == "Karlsruhe" select s.standort_id).ToList();
                List<string> lehrNamen = DropDownListAktualisieren(standortId[0]);
                DropDownListLehrgang.DataSource = DropDownListAktualisieren(standortId[0]);
                DropDownListLehrgang.DataBind();

               


               // GridViewAnsicht.DataSource = (from u in context.lehrgangsinhalte.tr where u. == 4 select u);
                GridViewAnsicht.DataBind();
            }

        }


        protected void DropDownListOrt_SelectedIndexChanged(object sender, EventArgs e)
        {
            string ort = DropDownListOrt.SelectedValue;
        
            using (ClasslogEntities context = new ClasslogEntities())
            {
                string lehrgangsOrt = DropDownListOrt.SelectedValue;

                //select standorte.standort_id
                //from standorte
                //where standorte.ort = 'Karlsruhe'
                var standortId = (from s in context.standorte where s.ort == lehrgangsOrt select s.standort_id).ToList();
                
                List<string> lehrNamen = DropDownListAktualisieren(standortId[0]);            
                DropDownListLehrgang.DataSource = DropDownListAktualisieren(standortId[0]);
                DropDownListLehrgang.DataBind();



                /*
                 * 
                 * select standorte.standort_id
from standorte
where standorte.ort = 'Karlsruhe'

select lehrgang.name
from lehrgang
where lehrgang.standort_id = 3

select lehrgang.lehrgangs_id
from lehrgang
where lehrgang.name = 'Projektbezogener Management-Lehrgang (Projektmanagementfachmann Level D)'


SELECT them.beschreibung, them.titel
from lehrgangsinhalte as lehr
join lehrgangsinhalte_themen as  lehrT on lehr.lehrgangsinhalts_id = lehrT.lehrgangsinhalte_id
join themen as them on them.themen_id = lehrT.themen_id

where lehrgangs_id = 9
                 * 
                 * 
                 **/

            }

        }

        public List<string> DropDownListAktualisieren(int lehrgangsID)
        {
            using (ClasslogEntities ctx = new ClasslogEntities())
            {

                //select lehrgang.name
                //from lehrgang
                //where lehrgang.standort_id = 3;
                var lehrgangNamen = (from l in ctx.lehrgang where l.standort_id == lehrgangsID select l.name).ToList();

                return lehrgangNamen;
            }
          
        }

        protected void DropDownListLehrgang_SelectedIndexChanged(object sender, EventArgs e)
        {

          

            

            using (ClasslogEntities context = new ClasslogEntities())
            {





                {

                }


            }
        }
    }
}