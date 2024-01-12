<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina_WebPpal_Carga.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.Pagina_WebPpal_Carga" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>PAGINA CARGA BASES COLSUBSIDIO</title>
    <style type="text/css">
    </style>
    <link href="../App_Themes/HojaEstilo_PortalCarga.css" rel="stylesheet" 
        type="text/css" />
        
        <script type="text/javascript">
            function cerrarpagina()
             {
                {
                    // open(location, '_self').close();
                    //window.open('location', '_self', '');
                    window.close();
                }
                return false;
            }
        </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
         
        <table class="EstiloTablaGeneral">
            <tr>
                <td rowspan="3" class="EstiloLogoEmpresa"> 
                    <asp:Image ID="ImagenLogoUNO27" runat="server" 
                        SkinID="LogoDoctor" ImageUrl="~/CapaVista/Imagenes/Icono_UNO27.png" 
                        Height="100px" ImageAlign="Middle" Width="140px"/>
                </td>
            </tr>
            
            
            <tr>
                <td colspan="3" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel1" runat="server" class="EstiloPanelCabecera">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                      <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                          Font-Italic="True" Font-Size="Medium" ForeColor="White" 
                              Text="MENU PRINCIPAL CARGA BASES"></asp:Label>
                      <br />
                      <br />
                   
                  </asp:Panel>
                </td>
            </tr>


            <tr>
                <td class="EstiloBarraIconosMenuPpal" colspan="1">
                      <asp:ImageButton ID="CargarBaseD" runat="server" Width="85px" 
                          ToolTip="Cargar a SQLServer" 
                          ImageUrl="~/CapaVista/Imagenes/Database_Icono.png" 
                          Height="60px" onclick="CargarBaseD_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                      <asp:ImageButton ID="BotonConsultar" runat="server" Height="60px" 
                          ImageUrl="~/CapaVista/Imagenes/Buscar2.png"
                          ToolTip="Consultar Bases" Width="85px" onclick="BotonConsultar_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      
                      <asp:ImageButton ID="Salir" runat="server"
                          ImageUrl="~/CapaVista/Imagenes/Cerrar.png" style="margin-top:0px" 
                          Width="85px" ToolTip="Salir de la Aplicacion" Height="60px" 
                          OnclientClick="return cerrarpagina();" onclick="Salir_Click"/>

                </td>
            </tr>
            
            <tr valign="top">
                <td rowspan="2" class="EstiloLogoEmpresa"> 
                    <asp:Image ID="LogoColsubsidio" runat="server" 
                        SkinID="LogoDoctor" ImageAlign="Middle" 
                        ImageUrl="~/CapaVista/Imagenes/Logo_Colsubsidio.png" Height="100px" 
                        Width="140px"/>
                    
                      <br />

                </td>
            </tr>
            
            
            <tr>
                <td colspan="1" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel2" runat="server" class="EstiloPanelCabecera">
                          &nbsp;&nbsp;&nbsp;<br />
                      <asp:FileUpload ID="ControlCargarFile" runat="server" Font-Size="Medium" 
                          ForeColor="#ED018C" Height="35px" 
                          ToolTip="Cargar Archivo" Width="362px" />

                      <br />
                      <br />
                      <asp:Label ID="LabelMensaje" runat="server" Font-Size="Medium" 
                          ForeColor="#FCFE01" Font-Bold="True"></asp:Label>

                      <br />
                      <br />
                  </asp:Panel>
                </td>
            </tr>
            
     </table>
    </div>


    <div>
          <table class="EstiloBarraCuerpoCentral">
            <tr valign="top">
                <td colspan="2" align="center">
                    <asp:Label ID="LabelTituloBases" runat="server" Text="LISTADO BASES CARGADAS" 
                        Visible="False" Font-Bold="True" ForeColor="#ED018C" Font-Size="Medium"></asp:Label>

                    <asp:GridView ID="ListaGridViewBases" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="1" GridLines="Vertical" HorizontalAlign="Center" 
                        style="margin-right: 2px" Visible="False" Width="600px" 
                        AllowSorting="True" Font-Size="Smaller">
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <Columns>
                            <asp:BoundField DataField="Campaña" HeaderText="Campaña" 
                                SortExpression="Campaña" />
                            <asp:BoundField DataField="NombreBase" HeaderText="Nombre Base" 
                                SortExpression="NombreBase" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="Data Source=3I_CC_DELL\SQLEXPRESS;Initial Catalog=DBUno27_CARGADBs;Integrated Security=True" 
                        ProviderName="System.Data.SqlClient" 
                        SelectCommand="SELECT [Campaña], [NombreBase] FROM [TablaBDsCarga]">
                    </asp:SqlDataSource>
                </td>
            </tr>
          </table>
    </div>
    
    </form>
</body>
</html>