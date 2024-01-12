<%@ Page Title="" Language="C#" MasterPageFile="~/CapaVista/Page_Maestra_Cargador.Master" AutoEventWireup="true" CodeBehind="WebMenuConsultar_CargaBD.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.WebMenuConsultar_CargaBD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PAGINA MENU CONSULTAS</title>
    <link rel="stylesheet" type="text/css" href="../App_Themes/HojaEstilo_PortalCarga.css"/> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceIconosMenu" runat="server">

                      <asp:ImageButton ID="ConsultarBases" runat="server" 
                          ImageUrl="~/CapaVista/Imagenes/Bases_Datos_Banco_Icono.png" 
                          onclick="BotonCargarBases_Click"
                          ToolTip="Listar Bases ya cargadas" Width="85px" Height="60px" />
                      
                      <asp:ImageButton ID="ConsultarCliente" runat="server" Width="85px" 
                          ToolTip="Consultar Cliente X Cedula" 
                          ImageUrl="~/CapaVista/Imagenes/FotoMiembro.png" 
                          onclick="ConsultarCliente_Click" Height="70px" />
                      
                      <asp:ImageButton ID="ConsultarEmail" runat="server" Height="63px" 
                          ImageUrl="~/CapaVista/Imagenes/Email.png" onclick="ConsultarEmail_Click" 
                          ToolTip="Consultar Cliente X Email" Width="78px" />
                      
                      <asp:ImageButton ID="ConsultarTelefono" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Telefono.png" onclick="ConsultarTelefono_Click" 
                          ToolTip="Consultar Cliente X Telefono" Width="85px" />
                          
                      <asp:ImageButton ID="ConsultarNombre" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Nombre_Apellido.png" 
                          onclick="ConsultarNombre_Click" ToolTip="Consultar Cliente X Nombre/Apellido" 
                          Width="85px" />

                      <asp:ImageButton ID="RegresarMenuPpal" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Flecha_Atras.png" onclick="RegresarMenuPpal_Click" 
                          ToolTip="Regresar a Menu Principal" Width="85px" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceCargador" runat="server">
                          <asp:Label ID="LabelMensaje" runat="server" Font-Bold="True" Font-Size="Medium" 
                              ForeColor="#FFFC05"></asp:Label>
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceContenido" runat="server">

          <div class="EstiloBarraCuerpoCentral">
            
                    <asp:Label ID="LabelTituloBases" runat="server" Text="LISTADO BASES CARGADAS" 
                        Visible="False" Font-Bold="True" ForeColor="#ED018C" Font-Size="Medium"></asp:Label>

              <div id="ContenidoCuerpo" class="ContenidoCuerpo">
                    <asp:GridView ID="ListaGridViewBases" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        BackColor="#A8A9AD" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                        CellPadding="3" GridLines="None" HorizontalAlign="Justify"
                        style="margin-right: 2px" Visible="False" Width="800px" 
                        AllowSorting="True" Font-Size="Smaller" CellSpacing="1" PagerStyle-HorizontalAlign="Center" PagerStyle-VerticalAlign="Top" CssClass="ContenidoCuerpo">
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <Columns>
                            <asp:BoundField DataField="Campaña" HeaderText="Campaña" 
                                SortExpression="Campaña" />
                            <asp:BoundField DataField="NombreBase" HeaderText="Nombre Base" 
                                SortExpression="NombreBase" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="Data Source=3I_CC_DELL\SQLEXPRESS;Initial Catalog=DBUno27_CARGADBs;Integrated Security=True" 
                        ProviderName="System.Data.SqlClient" 
                        SelectCommand="SELECT [Campaña], [NombreBase] FROM [TablaBDsCarga]">
                    </asp:SqlDataSource>
              </div>
          </div>
</asp:Content>
