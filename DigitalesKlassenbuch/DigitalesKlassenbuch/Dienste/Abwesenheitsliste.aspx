<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Abwesenheitsliste.aspx.cs" Inherits="DigitalesKlassenbuch.Dienste.Abwesenheitsliste" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Abwesenheitsliste der Teilnehmer</h2>
   
    

    

    


    <div class="row">
      
          <div class="col-md-10">
                 <h3>Übersicht</h3>
              <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
              <div class="mr-4"><asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></div>
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1"></asp:GridView>
           
               
              <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>


          </div>


          <div class="col-md-2">

          <h3>Eintrag</h3>
          <div class="list-group">
            <a href="#" class="list-group-item">Neu</a>
            <a href="#" class="list-group-item">Editieren</a>
            <a href="#" class="list-group-item">Löschen</a>
          </div>

        </div>







    </div>

     </div>

    
</asp:Content>
