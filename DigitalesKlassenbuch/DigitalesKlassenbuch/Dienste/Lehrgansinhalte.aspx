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
        </div>    
            
    <div class="col-md-4">
                

        <br />

        <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
              <li><a href="#">December 2013</a></li>
              <li><a href="#">November 2013</a></li>
              <li><a href="#">October 2013</a></li>
              <li><a href="#">September 2013</a></li>
              <li><a href="#">August 2013</a></li>
              <li><a href="#">July 2013</a></li>
              <li><a href="#">June 2013</a></li>
              <li><a href="#">May 2013</a></li>
              <li><a href="#">April 2013</a></li>
            </ol>

                    </div>           

          
                           
           

              

         
   
  </div>


    


</asp:Content>

