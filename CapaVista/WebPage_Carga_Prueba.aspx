<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebPage_Carga_Prueba.aspx.cs" Inherits="WebCargaBDUNO27.CapaVista.WebPage_Carga_Prueba" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"  lang="en">
<head runat="server">
    <title>PAGINA CARGA BASES COLSUBSIDIO</title>
    <meta content="utf-8"/>
    <meta name = "format-detection" content = "telephone=no"/>
    <link rel="icon" href="../CapaVista/Imagenes/favicon.ico"/>
    <link rel="shortcut icon" href="../CapaVista/Imagenes/favicon.ico"/>

    <link rel="stylesheet" type="text/css" href="../App_Themes/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="../App_Themes/css/camera.css"/>
    <link rel="stylesheet" type="text/css" href="../App_Themes/css/carousel.css"/>
    <link rel="stylesheet" type="text/css" href="../App_Themes/css/font-awesome.css"/>
    
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
    

    </script>
     
    <style type="text/css">
    </style>
     
</head>

<body>
    <form id="form1" runat="server">

<div><!--===Div General===-->

    <div class="clear"></div>

<!--=======INICIO LOGO Y MENU================================-->
    <div class="container_12" align="center"><!--===Div LOGO Y MENU===-->
        
        <div class="grid_12" align="center"><!--===Div LOGO===-->
           <h1>&nbsp;</h1>
            <h1>&nbsp;</h1>
            <h1><a href="WebPage_Carga_Prueba.aspx">
           <asp:Image ID="ImagenLogoUNO27" runat="server" 
                        ImageUrl="~/CapaVista/Imagenes/Logo_UNO27.png" 
                        class="style2"/>
           
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
           <asp:Label ID="LabelTituloApp" runat="server" Text="CARGADOR DE BASES COLSUBSIDIO" 
           Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>           
                        
           </a></h1>
        </div><!--===Div LOGO===-->


    
        <div class="grid_12" align="center"><!--===Div MENU===-->
            
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
           <asp:Label ID="LabelTituloMenu" runat="server" Text="MENU PRINCIPAL"  
            Font-Bold="True" Font-Size="Medium" ForeColor="White"></asp:Label>  
            
           <div class="menu_block">
              
              <ul class="sf-menu">
                   <li class="current">
                      <asp:ImageButton ID="CargarBaseD" runat="server" Width="85px" 
                          ToolTip="Cargar a SQLServer" 
                          ImageUrl="~/CapaVista/Imagenes/Database_Icono.png" 
                          Height="60px" onclick="CargarBaseD_Click"/>  
                   </li>      
              
                   <li class="current">
                          <asp:ImageButton ID="BotonConsultar" runat="server" Height="60px" 
                          ImageUrl="~/CapaVista/Imagenes/Buscar2.png"
                          ToolTip="Consultar Bases" Width="85px" onclick="BotonConsultar_Click" />
                   </li>       
              
                   <li class="current">
                      <asp:ImageButton ID="Salir" runat="server"
                          ImageUrl="~/CapaVista/Imagenes/Cerrar.png" style="margin-top:0px" 
                          Width="85px" ToolTip="Salir de la Aplicacion" Height="60px" 
                          OnclientClick="return cerrarpagina();" onclick="Salir_Click"/>
                   </li>      
              </ul>
              
            </div>
        
            

        </div><!--===Div MENU===-->
        
    </div><!--===Div LOGO Y MENU===-->
<!--=======FIN LOGO Y MENU================================-->
    
    
<!--=======SEPARADORES================================-->
    <div class="clear">
        <br />
    </div>  
    <div class="" style="background-color: #D2DADC">&nbsp;</div>                   
    <br />
<!--=======SEPARADORES================================-->
    

    <div><!--===INICIO Div CONTENIDO SLIDER,FORMULARIOS,DATAGRIDVIEW===-->

    <!--=======INICIO SLIDER================================-->

            
            
        </div>
        <br />
        <!--===Div SLIDER===-->
     <!--=======FINAL SLIDER================================-->



<!--=======SEPARADORES================================-->
        <div class="bg1" style="background-color: #D2DADC">
            sdsdsdsdsdsdsd</div>                   
<!--=======SEPARADORES================================-->
        <br />
<!--=======INICIO CARGA ARCHIVOS Y MENSAJES================================-->
        <div class="container_12" align="center"><!--===Div CARGADOR ARCHIVOS===-->
        
            <div class="grid_12" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="ControlCargarFile" runat="server" Font-Size="Medium" 
                ForeColor="#ED018C" Height="35px" 
                ToolTip="Cargar Archivo" Width="362px"/>
       
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelMensaje" runat="server" Font-Size="Medium" 
                ForeColor="#FCFE01" Font-Bold="True">
                </asp:Label>

                <br />
                <br />
            </div>
       </div><!--===Div CARGADOR ARCHIVOS===-->

<!--=======FIN CARGA ARCHIVOS Y MENSAJES================================-->



        <div><!--===Div DATAGRIDVIEW===-->
       </div><!--===Div DATAGRIDVIEW===-->

    </div><!--===Div CONTENIDO SLIDER, FORMULARIO Y DATAGRIDVIEW===-->

    
    
    
    <div><!--===Div PIE DE PAGINA===-->

    </div><!--===Div PIE DE PAGINA===-->

</div><!--===Div General===-->


<!--=======INICIO PIE DE PAGINA=================================-->
  <div class="container_12">
  </div>
<!--=======FINAL PIE DE PAGINA=================================-->

  
  </form>
</body>
</html>
