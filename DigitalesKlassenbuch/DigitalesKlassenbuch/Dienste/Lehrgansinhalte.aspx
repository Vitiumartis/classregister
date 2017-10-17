<%@ Page EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lehrgansinhalte.aspx.cs" Inherits="DigitalesKlassenbuch.Dienste.Lehrgansinhalte" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1><%: Title %>Übersicht Trainer Lehrgangsinhalte</h1>

    <asp:EntityDataSource ID="EntityDataSourceOrt" runat="server" ConnectionString="name=ClasslogEntities" DefaultContainerName="ClasslogEntities" EnableFlattening="False" EntitySetName="standorte" Select="it.[ort]"></asp:EntityDataSource>
    
    <br />
        <div class="row">
       
          <div class="col-md-8">

            <div class="form-group">
                <label for="ort">Ort</label>
               <span><asp:DropDownList ID="DropDownListOrt" runat="server" class="form-control" DataSourceID="EntityDataSourceOrt" DataTextField="ort" DataValueField="ort" OnSelectedIndexChanged="DropDownListOrt_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList></span>
            </div>
            
            <div class="form-group">
                <label for="lehrgang">Lehrgang</label>
                 <asp:DropDownList ID="DropDownListLehrgang" runat="server" class="form-control" OnSelectedIndexChanged="DropDownListLehrgang_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            </div>
              
              <br />
              <form id="form" runat="server">
                  <div>
                     
                  </div>
                  </form>

              <br />
             
              
              
              <br />

             <asp:GridView ID="GridViewAnsicht" runat="server" class="form-control"></asp:GridView>


        </div>    
            
   
                
        <div class="col-md-4 sidenav">
        <p><a href="~/Dienste/LehrgansinhalteNeu">Neu</a></p>
        <p><a href="#">Editieren</a></p>
      <p><a href="#">Löschen</a></p>
    </div>
       

       
                    </div>           

      

         
   
  


    


</asp:Content>

