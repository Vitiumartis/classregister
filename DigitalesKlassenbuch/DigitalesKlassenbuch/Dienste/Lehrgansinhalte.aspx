<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lehrgansinhalte.aspx.cs" Inherits="DigitalesKlassenbuch.Dienste.Lehrgansinhalte" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Trainer Lehrgangsinhalte</h2>
   
    


     <div class="row">
      
          <div class="col-md-10">
                 <h3>Übersicht</h3>


              <div class="col-md-5">
                    <asp:Label ID="lblOrt" runat="server" Text="Ort"></asp:Label>
              </div>

              <div class="col-md-5">

                  <asp:DropDownList ID="DropDownListOrt" runat="server" DataSourceID="EntityDataSource1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataTextField="ort" DataValueField="ort"></asp:DropDownList>
                  <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=classlog" DefaultContainerName="classlog" EnableFlattening="False" EntitySetName="standorte"></asp:EntityDataSource>
              </div>

              <%--       <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
        Dropdown
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" id="myList" runat="server">
        <asp:Literal runat="server" DataSourceID="SqlDataSource1" id="litDropDown"></asp:Literal>
    </ul>
</div>--%>



                



              <br />
              <br />
              <br />


              <div class="col-md-5">
                   <asp:Label ID="Label1" runat="server" Text="Lehrgang"></asp:Label>
              </div>
              <div class="col-md-5">
                   <asp:DropDownList ID="DropDownList3" runat="server">
                       <asp:ListItem>Finish IT</asp:ListItem>
                       <asp:ListItem>Fachinformatiker Umschultung</asp:ListItem>
                   </asp:DropDownList>
              </div>
              

            

                <div class="mr-4"></div>
             
              <div class="mr-4"></div>
             

              <div class="mr-4"></div>
              <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="EntityDataSource1" DataKeyNames="standort_id">
                  <Columns>
                      <asp:BoundField DataField="standort_id" HeaderText="standort_id" ReadOnly="True" SortExpression="standort_id" />
                      <asp:BoundField DataField="straße" HeaderText="straße" SortExpression="straße" />
                      <asp:BoundField DataField="ort" HeaderText="ort" SortExpression="ort" />
                      <asp:BoundField DataField="plz" HeaderText="plz" SortExpression="plz" />
                  </Columns>
                 </asp:GridView>
           
          </div>


          <div class="col-md-2">

          <h3>Eintrag</h3>
          <div class="list-group">
            <a class="list-group-item" runat="server" href="~/Dienste/LehrgansinhalteNeu">Neu</a>
            <a href="#" class="list-group-item">Editieren</a>
            <a href="#" class="list-group-item">Löschen</a>

                 

          </div>

        </div>







    </div>




</asp:Content>

