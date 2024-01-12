<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaMenuBases.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.PaginaMenuBases" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>PAGINA CARGA BASES COLSUBSIDIO</title>
    <style type="text/css">
    </style>
    <link href="../App_Themes/HojaEstilo_PortalCarga.css" rel="stylesheet" 
        type="text/css" />
        
    <script type="text/javascript" >

        function cerrarpagina() 
        {
            window.close();
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
                    &nbsp;&nbsp;&nbsp;<asp:Image ID="ImagenLogoUNO27" runat="server" 
                    ImageUrl="~/CapaVista/Imagenes/Icono_UNO27.png"/>
                </td>
            </tr>
            
            
            <tr>
                <td colspan="3" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel1" runat="server" class="EstiloPanelCabecera">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                      <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                          Font-Italic="True" Font-Size="X-Large" ForeColor="White" Text="MENU CONSULTAS"></asp:Label>
                      <br />
                      <br />
                      <br />
                      <br />
                   
                  </asp:Panel>
                </td>
            </tr>


            <tr>
                <td class="EstiloBarraIconosMenuPpal" colspan="5">
                      <asp:ImageButton ID="ConsultarBases" runat="server" 
                          ImageUrl="~/CapaVista/Imagenes/Bases_Datos_Banco_Icono.png" onclick="BotonCargar_Click" 
                          ToolTip="Cargar el Archivo" Width="110px" Height="75px" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:ImageButton ID="ConsultarCliente" runat="server" Width="85px" 
                          ToolTip="Cargar a SQLServer" 
                          ImageUrl="~/CapaVista/Imagenes/FotoMiembro.png" 
                          onclick="CargarBaseD_Click" Height="85px" />
                      &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                      <asp:ImageButton ID="RegresarMenuPpal" runat="server" Height="80px" 
                          ImageUrl="~/CapaVista/Imagenes/Flecha_Atras.png" onclick="BotonConsultar_Click" 
                          ToolTip="Consultar Bases" Width="80px" />
                      &nbsp;&nbsp;&nbsp; &nbsp;
                      <asp:ImageButton ID="BotonSalir" runat="server" 
                          ImageUrl="~/CapaVista/Imagenes/Cerrar.png" style="margin-top: 0px" 
                          Width="80px" ToolTip="Salir de la Aplicacion" Height="73px" 
                          OnClientClick="return cerrarpagina();" onclick="BotonSalir_Click"/>
                </td>
            </tr>
            
            <tr>
                <td rowspan="3" class="EstiloLogoEmpresa"> 
                    &nbsp;&nbsp;&nbsp;<asp:Image ID="LogoColsubsidio" runat="server" 
                        ImageAlign="Middle" 
                        ImageUrl="~/CapaVista/Imagenes/Logo_Colsubsidio.png"/>
                    
                      <br />
                      <br />

                </td>
            </tr>
            
            
            <tr>
                <td colspan="3" class="EstiloTablaGeneral">
                      <asp:Panel ID="Panel2" runat="server" class="EstiloPanelCabecera">
                          <br />
                          <br />
                          <asp:Label ID="LabelCedula" runat="server" Text="Digite Cedula Ciudadania:"></asp:Label>
                          <asp:TextBox ID="TextCedula" runat="server"></asp:TextBox>
                          &nbsp;&nbsp;
                          <asp:Button ID="ButtonConsultaCedula" runat="server" 
                              onclick="ButtonConsultaCedula_Click" Text="Consultar Cedula" />
                          <br />
                          &nbsp;&nbsp;&nbsp;&nbsp;<br />
                          <br />
                          <br />

                      <br />
                      <asp:Label ID="LabelMensaje" runat="server" Font-Size="Larger" 
                          ForeColor="Yellow"></asp:Label>

                      <br />
                      <br />
                  </asp:Panel>
                </td>
            </tr>
            
     </table>
        
        
    </div>
    
      <table class="EstiloTablaGeneral">
                
            
             <tr>
                <td rowspan="2" class="EstiloContenedorCentral"> 
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;<br />
                    <asp:Label ID="LabelTituloBases0" runat="server" Text="CONSULTA CLIENTE" 
                        Visible="False"></asp:Label>
                    <br />
                    <br />
&nbsp;<asp:GridView ID="ListaGridConsultarCliente" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" 
                        style="margin-right: 225px; margin-top: 12px;" Visible="False" 
                        Width="948px" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Vertical" HorizontalAlign="Center">
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <Columns>
                            <asp:BoundField DataField="MesRemision" HeaderText="Mes Remision" 
                                SortExpression="MesRemision" />
                            <asp:BoundField DataField="Campaña" HeaderText="Campaña" 
                                SortExpression="Campaña" />
                            <asp:BoundField DataField="NombreBase" HeaderText="Nombre Base" 
                                SortExpression="NombreBase" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                                SortExpression="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" 
                                SortExpression="Apellido" />
                            <asp:BoundField DataField="Cedula" HeaderText="Cedula" 
                                SortExpression="Cedula" />
                            <asp:BoundField DataField="FechaConvocatoria" HeaderText="Fecha Convoc" 
                                SortExpression="FechaConvocatoria" />
                            <asp:BoundField DataField="Tel1" HeaderText="Tel1" SortExpression="Tel1" />
                            <asp:BoundField DataField="Tel2" HeaderText="Tel2" SortExpression="Tel2" />
                            <asp:BoundField DataField="Tel3" HeaderText="Tel3" SortExpression="Tel3" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="EstadoFosFec" HeaderText="EstadoFosFec" 
                                SortExpression="EstadoFosFec" />
                            <asp:BoundField DataField="FechaRetiro" HeaderText="Fecha Retiro" 
                                SortExpression="FechaRetiro" />
                            <asp:BoundField DataField="Empresa" HeaderText="Empresa" 
                                SortExpression="Empresa" />
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
                        
                        SelectCommand="SELECT * FROM [TablaBDsCarga] WHERE ([Cedula] = @Cedula) ORDER BY [MesRemision]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextCedula" DefaultValue="" Name="Cedula" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
    
       </table>
    </form>
</body>
</html>