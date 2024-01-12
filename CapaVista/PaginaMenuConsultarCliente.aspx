<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaMenuConsultarCliente.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.PaginaMenuConsultarCliente" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>PAGINA CONSULTA CLIENTE X CEDULA</title>
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
                      <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                          Font-Italic="True" Font-Size="Medium" ForeColor="White" 
                              Text="MENU CONSULTAS CLIENTE"></asp:Label>
                      <br />
                      <br />
                   
                  </asp:Panel>
                </td>
            </tr>


            <tr>
                <td class="EstiloBarraIconosMenuPpal" colspan="5">
                      <asp:ImageButton ID="RegresarMenuPpal" runat="server" Height="70px" 
                          ImageUrl="~/CapaVista/Imagenes/Flecha_Atras.png" onclick="BotonSalir_Click" 
                          ToolTip="Regresar al Menu Consultar" Width="85px" />
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
                          <asp:Label ID="LabelCedula" runat="server" Text="Digite Cedula Ciudadania:" 
                              Font-Bold="True" ForeColor="#FEFF00" Font-Size="Medium"></asp:Label>
                          &nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextCedula" runat="server"></asp:TextBox>
                          &nbsp;&nbsp;
                          <asp:Button ID="ButtonConsultaCedula" runat="server" 
                              onclick="ButtonConsultaCedula_Click" Text="Consultar Cedula" 
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
                    <asp:Label ID="LabelTituloBases" runat="server" Text="CONSULTA CLIENTE" 
                        Visible="False" Font-Bold="True" ForeColor="#ED018C" Font-Size="Medium"></asp:Label>
                        
                    <asp:GridView ID="ListaGridConsultarCliente" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" 
                        style="margin-right: 225px; margin-top: 12px;" Visible="False" 
                        Width="920px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="1" GridLines="Vertical" HorizontalAlign="Center" 
                        Font-Size="Smaller" Height="289px">
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
                        
                        SelectCommand="SELECT * FROM [TablaBDsCarga] WHERE ([Cedula] = @Cedula) ORDER BY [MesRemision]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextCedula" DefaultValue="" Name="Cedula" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
           </table>
         </div>
    </form>
</body>
</html>