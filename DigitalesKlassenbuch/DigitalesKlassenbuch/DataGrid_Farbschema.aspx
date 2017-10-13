                        <asp:GridView ID="GridViewAufwandUebersicht" runat="server"
                            AutoGenerateColumns="False"
                            DataSourceID="SqlDataSourceAufwand"
                            CellPadding="4" ForeColor="#333333" GridLines="None"
                            EmptyDataText="Für den ausgewählten Zeitraum wurden noch keine Aufwände eingetragen!"
                            DataKeyNames="MitarbeiterID,AufwandID,Aktiv"
                            OnPreRender="GridViewAufwandUebersicht_PreRender"
                            OnRowDeleted="GridViewAufwandUebersicht_RowDeleted"
                            OnRowDeleting="GridViewAufwandUebersicht_RowDeleting"
                            OnRowUpdated="GridViewAufwandUebersicht_RowUpdated"
                            OnRowUpdating="GridViewAufwandUebersicht_RowUpdating"
                            CssClass="table  table-condensed">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="MitarbeiterID" HeaderText="MitarbeiterID"
                                    InsertVisible="False" ReadOnly="True" SortExpression="MitarbeiterID"
                                    Visible="False" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"
                                    ReadOnly="True" />
                                <asp:BoundField DataField="Vorname" HeaderText="Vorname"
                                    SortExpression="Vorname" ReadOnly="True" />
                                <asp:TemplateField HeaderText="Datum" SortExpression="Datum">
                                    <ItemTemplate>
                                        <asp:Label ID="Datum" runat="server"
                                            Text='<%# NurDatum(Eval("Datum")) %>' ></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <uc1:Kalender ID="KalenderAufwandserfassung" DatumText='<%# Bind("Datum", "{0:d.M.yyyy}") %>' runat="server" />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Beginn" SortExpression="Beginn">
                                    <ItemTemplate>
                                        <asp:Label ID="Beginn" runat="server"
                                            Text='<%# FuenfZeichen(Eval("Beginn")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="Beginn" runat="server" 
                                            Text='<%# Bind("Beginn" ) %>'  CssClass="form-control input-sm" Style="width:57px;"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Ende" SortExpression="Ende">
                                    <ItemTemplate>
                                        <asp:Label ID="Ende" runat="server"
                                            Text='<%# FuenfZeichen(Eval("Ende")) %>' ></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="Ende" runat="server" 
                                            Text='<%# Bind("Ende") %>' CssClass="form-control input-sm" Style="width:57px;"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Pause" SortExpression="Pause">
                                    <ItemTemplate>
                                        <asp:Label ID="Pause" runat="server"
                                            Text='<%# FuenfZeichen(Eval("Pause")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="Pause" runat="server" 
                                            Text='<%# Bind("Pause") %>' CssClass="form-control input-sm" Style="width:57px;"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Zeit" SortExpression="Zeit">
                                    <ItemTemplate>
                                        <asp:Label ID="Zeit" runat="server"
                                            Text='<%# FormatZeit(Eval("Beginn"),Eval("Ende"),Eval("Pause"),Eval("DetailsID")) %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Tätigkeit" SortExpression="Bezeichnung">
                                    <ItemTemplate>
                                        <asp:Label ID="DropDownListTaetigkeit" runat="server"
                                            Text='<%# FormatKategorie(Eval("KategorieID")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="DropDownListTaetigkeit" runat="server"
                                            Text=""></asp:Label>
                                    </EditItemTemplate>
                                    <ItemStyle Wrap="False"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="" SortExpression="Bezeichnung" ItemStyle-Wrap="false">
                                    <ItemTemplate>
                                        <asp:Label ID="DropDownListDetails" runat="server"
                                            Text='<%# FormatDetail(Eval("DetailsID")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <uc1:Kategorie ID="DetailBearbeiten" runat="server" KategorieNummer='<%# Bind("KategorieID") %>' DetailNummer='<%# Bind("DetailsID") %>' TaetigkeitenNummer='<%# Bind("TaetigkeitenID") %>' />
                                    </EditItemTemplate>
                                    <ItemStyle Wrap="False"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="" SortExpression="Bezeichnung" ItemStyle-Wrap="false">
                                    <ItemTemplate>
                                        <asp:Label ID="DropDownListArt" runat="server"
                                            Text='<%# FormatTaetigkeit(Eval("TaetigkeitenID")) %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Label ID="DropDownListArt" runat="server"
                                            Text="" ></asp:Label>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="" SortExpression="Bezeichnung" ItemStyle-Wrap="false">
                                    <ItemTemplate>
<%--                                        <asp:Label ID="KommentarItem" runat="server" 
                                            Text='<%# Eval("Kommentare") %>' Style="width:50px;"></asp:Label>--%>
                                        <asp:Image ID="Image1" ToolTip='<%# Eval("Kommentare") %>' runat="server" ImageUrl="~/App_Themes/sprechblase.gif" Visible='<%# ZeigeKommentar(Eval("Kommentare")) %>' />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="Kommentar" runat="server" 
                                            Text='<%# Bind("Kommentare") %>' CssClass="form-control input-sm" Style="width:150px;"></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="true" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" Font-Bold="True" ForeColor="#000000" />
                            <HeaderStyle BackColor="#F3AE00" Font-Bold="True" ForeColor="#000000" />
                            <PagerStyle BackColor="#FEF3C6" ForeColor="#F3AE00" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FEF3C6" ForeColor="#000000" />
                            <SelectedRowStyle BackColor="#EBEBEB" Font-Bold="True" ForeColor="#000000" />
                        </asp:GridView>