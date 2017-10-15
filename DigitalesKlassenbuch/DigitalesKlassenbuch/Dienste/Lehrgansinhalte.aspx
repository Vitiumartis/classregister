<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lehrgansinhalte.aspx.cs" Inherits="DigitalesKlassenbuch.Dienste.Lehrgansinhalte" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Trainer Lehrgangsinhalte</h2>


    <asp:EntityDataSource ID="EntityDataSourceOrt" runat="server" ConnectionString="name=classlog" DefaultContainerName="classlog" EnableFlattening="False" EntitySetName="standorte" EntityTypeFilter="standorte" Select="it.[ort]"></asp:EntityDataSource>
   
    <div class="row">
  
        
  
         <div class="col-md-8">

               <div class="form-group">
      <label for="email">Ort</label>
        <asp:DropDownList ID="DropDownListOrt" runat="server" class="form-control" DataSourceID="EntityDataSourceOrt" DataTextField="ort" DataValueField="ort" OnSelectedIndexChanged="DropDownListOrt_SelectedIndexChanged"></asp:DropDownList>
    </div>
    <div class="form-group">
      <label for="pwd">Lehrgang</label>
      <asp:DropDownList ID="DropDownListLehrgang" runat="server" class="form-control" OnSelectedIndexChanged="DropDownListLehrgang_SelectedIndexChanged"></asp:DropDownList>
    </div>

         </div>
  
              <div class="col-md-4">


    </div>

      
  
  
 </div>



        







   



</asp:Content>

