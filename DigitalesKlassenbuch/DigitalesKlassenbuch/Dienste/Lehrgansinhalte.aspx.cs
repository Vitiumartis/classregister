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

                //Debug.WriteLine(standortId[0]);



                List<string> lehrNamen = DropDownListAktualisieren(standortId[0]);
                Debug.WriteLine(lehrNamen[0]);

                DropDownListLehrgang.DataSource = DropDownListAktualisieren(standortId[0]);
                DropDownListLehrgang.DataBind();


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