<%@ Page EnableEventValidation="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lehrgansinhalte.aspx.cs" Inherits="DigitalesKlassenbuch.Dienste.Lehrgansinhalte" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Trainer Lehrgangsinhalte</h2>

    <asp:EntityDataSource ID="EntityDataSourceOrt" runat="server" ConnectionString="name=ClasslogEntities" DefaultContainerName="ClasslogEntities" EnableFlattening="False" EntitySetName="standorte" Select="it.[ort]"></asp:EntityDataSource>
   
        <div class="row">

          <div class="col-md-8">

           
            <div class="form-group">
                <label for="ort">Ort</label>
                <asp:DropDownList ID="DropDownListOrt" runat="server" class="form-control" DataSourceID="EntityDataSourceOrt" DataTextField="ort" DataValueField="ort" OnSelectedIndexChanged="DropDownListOrt_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            </div>
            
            <div class="form-group">
                <label for="lehrgang">Lehrgang</label>
                 <asp:DropDownList ID="DropDownListLehrgang" runat="server" class="form-control" OnSelectedIndexChanged="DropDownListLehrgang_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            </div>
          

           
                <div class="form-group">
                    <label for="zeitraumVon">Zeitraum Von</label>
                    <asp:TextBox ID="TextBoxVon" runat="server" class="form-control"></asp:TextBox>

                     <label for="zeitraumBis">Bis</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>  
                </div>

                     
         

          </div>
  
         
        
        <div class="col-md-4">


 

  </div>
   
  </div>

</asp:Content>

