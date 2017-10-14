<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fehlzeiten.aspx.cs" Inherits="DigitalesKlassenbuch.Dienste.fehlzeiten" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>fehlzeiten</h2>
    <asp:EntityDataSource ID="fehlzeitenEntityDataSource" runat="server" ConnectionString="name=classlog" DefaultContainerName="classlog" EnableFlattening="False" EntitySetName="abwesende"></asp:EntityDataSource>
</asp:Content>
