<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaMenuConsultarXTelefono.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.PaginaMenuConsultarXTelefono" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>PAGINA CONSULTA CLIENTE X TELEFONO</title>
    <style type="text/css">
    </style>
    <link href="../App_Themes/HojaEstilo_PortalCarga.css" rel="stylesheet" 
        type="text/css" />
        
    <script type="text/javascript" >

/*        function cerrarpagina() {
            window.close();
            return false;
        }*/

    </script>
</head>

<body>
    <form id="form1" runat="server">
    <div>
         
        <table class="EstiloTablaGeneral">
            <tr>
                <td rowspan="3" class="EstiloLogoEmpresa"> 
                    <asp:Image ID="ImagenLogoUNO27" runat="server" 
                    ImageUrl="~/CapaVista/Imagenes/Icono_UNO27.png" Height="100px" Width="140px"/>
                </td>
            </tr>
            
            
            <tr>
                <td colspan="3" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel1" runat="server" class="EstiloPanelCabecera">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                      <asp:Label ID="LabelTitTelefono" runat="server" Font-Bold="True" 
                          Font-Italic="True" Font-Size="Medium" ForeColor="White" 
                              Text="MENU CONSULTA CLIENTE X TELEFONO"></asp:Label>
                      <br />
                      <br />
                   
                  </asp:Panel>
                </td>
            </tr>


            <tr>
                <td class="EstiloBarraIconosMenuPpal" colspan="5">
                      <asp:ImageButton ID="RegresarMenuPpal" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Flecha_Atras.png" 
                          ToolTip="Regresar al Menu Consultar" Width="85px" 
                          onclick="RegresarMenuPpal_Click" />
                </td>
            </tr>
            
            <tr>
                <td rowspan="3" class="EstiloLogoEmpresa"> 
                                        <asp:Image ID="LogoColsubsidio" runat="server" 
                        ImageAlign="Middle" 
                        ImageUrl="~/CapaVista/Imagenes/Logo_Colsubsidio.png" Height="100px" 
                        Width="140px"/>
                    
                </td>
            </tr>
            
            
            <tr>
                <td colspan="3" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel2" runat="server" class="EstiloPanelCabecera">
                          <br />
                          <br />
                          <asp:Label ID="LabelTelefono" runat="server" Text="Digite el Telefono del cliente:" 
                              Font-Bold="True" ForeColor="#FEFF00" Font-Size="Medium"></asp:Label>
                          &nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextTelefono" runat="server"></asp:TextBox>
                          &nbsp;&nbsp;
                          <asp:Button ID="ButtonConsultaTelefono" runat="server" 
                              onclick="ButtonConsultaTelefono_Click" Text="Consultar Telefono" 
                              Font-Bold="True" ForeColor="#ED018C" Font-Size="Small" />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;<br />

                      <asp:Label ID="LabelMensaje" runat="server" Font-Size="Medium" 
                          ForeColor="#FEFF00" Font-Bold="True"></asp:Label>
                      </asp:Panel>
                </td>
            </tr>
            
     </table>
    </div>

    
        <div>
          <table class="EstiloBarraCuerpoCentral">
            <tr  valign="top">
                <td class="EstiloBarraCuerpoCentral" align="center">
                    <asp:Label ID="LabelTituloConsultaTelefono" runat="server" Text="CONSULTA CLIENTE X TELEFONO" 
                        Visible="False" Font-Bold="True" ForeColor="#ED018C" Font-Size="Medium"></asp:Label>
                    <asp:GridView ID="ListaGridConsultarClienteTelefono" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" 
                        style="margin-right: 225px; margin-top: 12px;" Visible="False" 
                        Width="920px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="1" GridLines="Vertical" HorizontalAlign="Center" 
                        Font-Size="Smaller" Height="289px" AllowSorting="True">
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <Columns>
                            <asp:BoundField DataField="MesRemision" HeaderText="MesRemision" 
                                SortExpression="MesRemision" />
                            <asp:BoundField DataField="Campaña" HeaderText="Campaña" 
                                SortExpression="Campaña" />
                            <asp:BoundField DataField="NombreBase" HeaderText="NombreBase" 
                                SortExpression="NombreBase" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                                SortExpression="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" 
                                SortExpression="Apellido" />
                            <asp:BoundField DataField="Cedula" HeaderText="Cedula" 
                                SortExpression="Cedula" />
                            <asp:BoundField DataField="FechaConvocatoria" HeaderText="FechaConvocatoria" 
                                SortExpression="FechaConvocatoria" />
                            <asp:BoundField DataField="Tel1" HeaderText="Tel1" SortExpression="Tel1" />
                            <asp:BoundField DataField="Tel2" HeaderText="Tel2" SortExpression="Tel2" />
                            <asp:BoundField DataField="Tel3" HeaderText="Tel3" SortExpression="Tel3" />
                            <asp:BoundField DataField="Tel4" HeaderText="Tel4" SortExpression="Tel4" />
                            <asp:BoundField DataField="Email" HeaderText="Email" 
                                SortExpression="Email" />
                            <asp:BoundField DataField="EstadoFosFec" HeaderText="EstadoFosFec" 
                                SortExpression="EstadoFosFec" />
                            <asp:BoundField DataField="FechaRetiro" HeaderText="FechaRetiro" 
                                SortExpression="FechaRetiro" />
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" 
                                SortExpression="Empresa" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="Gainsboro" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="Data Source=3I_CC_DELL\SQLEXPRESS;Initial Catalog=DBUno27_CARGADBs;Integrated Security=True" 
                        ProviderName="System.Data.SqlClient" 
                        
                        
                        
                        
                        SelectCommand="SELECT MesRemision, Campaña, NombreBase, Nombre, Apellido, Cedula, FechaConvocatoria, Tel1, Tel2, Tel3, Tel4, Email, EstadoFosFec, FechaRetiro, Empresa FROM TablaBDsCarga WHERE (Tel1 LIKE @Tel1 + '%') OR (Tel2 LIKE @Tel1 + '%') OR (Tel3 LIKE @Tel1 + '%') OR (Tel4 LIKE @Tel1 + '%') ORDER BY MesRemision">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextTelefono" Name="Tel1" 
                                PropertyName="Text" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
           </table>
         </div>
    </form>
</body>
</html>
