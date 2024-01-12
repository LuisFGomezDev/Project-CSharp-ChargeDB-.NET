<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaMenuConsultar.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>PAGINA CONSULTA BASES COLSUBSIDIO</title>
    <style type="text/css">
    </style>
    <link href="../App_Themes/HojaEstilo_PortalCarga.css" rel="stylesheet" 
        type="text/css" />
        
    <script type="text/javascript" >
/*
        function cerrarpagina() {
            var win = window.close();
            win.close();
        
            //window.close();
            return false;
        }
*/
    </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
         
        <table class="EstiloTablaGeneral">
            <tr>
                <td rowspan="3" class="EstiloLogoEmpresa"> 
                    <asp:Image ID="ImagenLogoUNO27" runat="server" 
                    ImageUrl="~/CapaVista/Imagenes/Icono_UNO27.png" Height="100px" 
                        ImageAlign="Middle" Width="140px"/>
                </td>
            </tr>
            
            
            <tr>
                <td colspan="3" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel1" runat="server" class="EstiloPanelCabecera">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                      <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                          Font-Italic="True" Font-Size="Medium" ForeColor="White" Text="MENU CONSULTAS"></asp:Label>
                      <br />
                      <br />
                   
                  </asp:Panel>
                </td>
            </tr>


            <tr>
                <td class="EstiloBarraIconosMenuPpal" colspan="5">
                      <asp:ImageButton ID="ConsultarBases" runat="server" 
                          ImageUrl="~/CapaVista/Imagenes/Bases_Datos_Banco_Icono.png" onclick="BotonCargarBases_Click" 
                          ToolTip="Listar Bases ya cargadas" Width="85px" Height="60px" />
                      &nbsp;
                      <asp:ImageButton ID="ConsultarCliente" runat="server" Width="85px" 
                          ToolTip="Consultar Cliente X Cedula" 
                          ImageUrl="~/CapaVista/Imagenes/FotoMiembro.png" 
                          onclick="CargarBaseD_Click" Height="70px" />
                      &nbsp;
                      <asp:ImageButton ID="ConsultarEmail" runat="server" Height="63px" 
                          ImageUrl="~/CapaVista/Imagenes/Email.png" onclick="ConsultarEmail_Click" 
                          ToolTip="Consultar Cliente X Email" Width="78px" />
&nbsp;
                      <asp:ImageButton ID="ConsultarTelefono" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Telefono.png" onclick="ConsultarTelefono_Click" 
                          ToolTip="Consultar Cliente X Telefono" Width="85px" />
&nbsp;<asp:ImageButton ID="ConsultarNombre" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Nombre_Apellido.png" 
                          onclick="ConsultarNombre_Click" ToolTip="Consultar Cliente X Nombre/Apellido" 
                          Width="85px" />
                      &nbsp;
                      <asp:ImageButton ID="RegresarMenuPpal" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Flecha_Atras.png" onclick="BotonConsultar_Click" 
                          ToolTip="Regresar a Menu Principal" Width="85px" />
                      &nbsp;&nbsp;&nbsp; &nbsp;
                      </td>
            </tr>
            
            <tr>
                <td rowspan="3" class="EstiloLogoEmpresa"> 
                    <asp:Image ID="LogoColsubsidio" runat="server" 
                        ImageAlign="Middle" 
                        ImageUrl="~/CapaVista/Imagenes/Logo_Colsubsidio.png" Height="100px" 
                        Width="140px"/>
                    
                      <br />

                </td>
            </tr>
            
            
            <tr>
                <td colspan="3" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel2" runat="server" class="EstiloPanelCabecera">
                          &nbsp;<br />
                          &nbsp;&nbsp;&nbsp;<br />
                          <asp:Label ID="LabelMensaje" runat="server" Font-Bold="True" Font-Size="Medium" 
                              ForeColor="#FFFC05"></asp:Label>
                          <br />

                      <br />
                      <br />
                  </asp:Panel>
                </td>
            </tr>
            
     </table>
        
        
    </div>
    
  <div>
          <table class="EstiloBarraCuerpoCentral">
            <tr  valign="top">
               <td colspan="1"  class="EstiloBarraCuerpoCentral" align="center">
                    <asp:Label ID="LabelTituloBases" runat="server" Text="LISTADO BASES CARGADAS" 
                        Visible="False" Font-Bold="True" ForeColor="#ED018C" Font-Size="Medium"></asp:Label>

                    <asp:GridView ID="ListaGridViewBases" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="1" GridLines="Vertical" HorizontalAlign="Center" 
                        style="margin-right: 2px" Visible="False" Width="800px" 
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