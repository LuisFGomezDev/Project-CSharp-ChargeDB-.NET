<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCargadorPrueba.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.WebFormCargadorPrueba" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>PAGINA CARGA BASES COLSUBSIDIO</title>
    <meta content="utf-8"/>
    <meta name = "format-detection" content = "telephone=no"/>
    <link rel="icon" href="../CapaVista/Imagenes/favicon.ico"/>
    <link rel="shortcut icon" href="../CapaVista/Imagenes/favicon.ico"/>

    <link rel="stylesheet" type="text/css" href="../App_Themes/HojaEstilo_PortalCarga.css"/>
    
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/jquery-migrate-1.1.1.js"></script>
    <script type="text/javascript" src="../js/script.js"></script> 
    <script type="text/javascript" src="../js/jquery.equalheights.js"></script>
    <script type="text/javascript" src="../js/superfish.js"></script>
    <script type="text/javascript" src="../js/jquery.responsivemenu.js"></script>
    <script type="text/javascript" src="../js/jquery.mobilemenu.js"></script>
    <script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../js/camera.js"></script>
    
    <!--[if (gt IE 9)|!(IE)]><!-->
    <script type="text/javascript" src="../js/jquery.mobile.customized.min.js"></script>
    <!--<![endif]-->
    
    <script type="text/javascript" src="../js/jquery.carouFredSel-6.1.0-packed.js"></script>
    <script type="text/javascript" src="../js/jquery.touchSwipe.min.js"></script>
    
    <script type="text/javascript">

        function cerrarpagina() 
        {
            window.close();
            return false;
        }

    </script>
     
    <style type="text/css">
    </style>
     
</head>

<body>
    <form id="form1" runat="server">
    <div class="EstiloDivExterno"><!--=== INICIO  Div EXTERNO     #COLOR GRIS OSCURO FUERTE===-->

        <div class="EstiloDivContenedorGeneral"><!--=== INICIO CONTENEDOR GENERAL    #COLOR FUCSIA APLICATVO UNO27, PUNTAS REDONDAS===-->
             <div class="EstiloDivContenedorCabeceraMenu"><!--=== INICIO CONTENEDOR CABECERA MENU    #COLOR NEGRO LOGO OSCURO, PUNTAS REDONDAS CON EFECTO SOMBRA===-->
               
               <div class="EstiloDivLogo"><!--=== INICIO DIV LOGO, PUNTA REDONDA, BORDE FUCSIA LOGO===-->
               
               <asp:Image ID="ImagenLogoUNO27" runat="server" 
                    ImageUrl="~/CapaVista/Imagenes/Logo_UNO27_3.png" Height="142px" 
                       Width="182px"/>
               
               </div><!--=== FIN DIV LOGO===-->

               <div class="EstiloDivTitulo"><!--=== INICIO DIV TITULO APP, PUNTA REDONDA, BORDE FUCSIA LOGO===-->
               
               <asp:Label ID="LabelTituloApp" runat="server" Text="CARGADOR DE BASES COLSUBSIDIO" 
                Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
               
               </div><!--=== FIN DIV TITULO APP===-->

               <div class="EstiloDivIconosMenu"><!--=== INICIO DIV ICONOS MENU, PUNTA REDONDA, BORDE FUCSIA LOGO===-->
                <table> 
                <tr>
                <td class="EstiloBarraIconosMenuPpal" colspan="1">
                      <asp:ImageButton ID="CargarBaseD" runat="server" Width="85px" 
                          ToolTip="Cargar a SQLServer" 
                          ImageUrl="~/CapaVista/Imagenes/Database_Icono.png" 
                          Height="50px" onclick="CargarBaseD_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                      <asp:ImageButton ID="BotonConsultar" runat="server" Height="50px" 
                          ImageUrl="~/CapaVista/Imagenes/Buscar2.png"
                          ToolTip="Consultar Bases" Width="85px" onclick="BotonConsultar_Click" />
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      
                      <asp:ImageButton ID="Salir" runat="server"
                          ImageUrl="~/CapaVista/Imagenes/Cerrar.png" style="margin-top:0px" 
                          Width="85px" ToolTip="Salir de la Aplicacion" Height="50px" 
                          OnclientClick="return cerrarpagina();" onclick="Salir_Click"/>

                </td>
                </tr>
                </table>
               
               </div><!--=== FIN DIV ICONOS MENU===-->
               
               <div class="EstiloDivCargador"><!--=== INICIO DIV CARGADOR UPLOAD, PUNTA REDONDA, BORDE FUCSIA LOGO===-->
               <table>
               <tr>
                <td class="EstiloUpload">
                          &nbsp;&nbsp;&nbsp;<br />
                      <asp:FileUpload ID="ControlCargarFile" runat="server" Font-Size="Medium" 
                          ForeColor="#ED018C" Height="35px" 
                          ToolTip="Cargar Archivo" Width="400px" />
                      <br />
                      <asp:Label ID="LabelMensaje" runat="server" Font-Size="Large" 
                          ForeColor="#FCFE01" Font-Bold="True"></asp:Label>
                      <br />
                </td>
               </tr>
               </table>
               
               </div><!--=== FIN DIV CARGADOR===-->
               
               
             </div><!--=== FIN CONTENEDOR CABECERA MENU===-->
    
    
             <div class="EstiloDivContenedorCuerpoCentral"><!--=== INICIO CONTENEDOR CUERPO CENTRAL, #COLOR GRIS CLARO LOGO UNO27===-->
             </div><!--=== FIN CONTENEDOR CUERPO CENTRAL===-->
    
        </div><!--=== FIN CONTENEDOR GENERAL===-->
    
    </div><!--=== FIN  Div EXTERNO===-->
    </form>
</body>
</html>
