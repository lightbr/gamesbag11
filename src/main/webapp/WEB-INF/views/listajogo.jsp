<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>GamesBag</title>

    <link rel="stylesheet" type="text/css" href="resources/esqueleto.css">

    <!-- Bootstrap -->
    <link type="text/css" href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body class="bg-warning">

    <!-- Container-fluid -->
    <div class="container-fluid">

      <!-- Navbar -->
      <nav class="navbar navbar-success">
       
      	<c:import url="navbar.jsp" />
      	
      </nav><!-- /Navbar -->


      <!-- Esqueleto -->
      <div id="esqueleto" class="row">

        <!-- Sidebar -->
        <div id="sidebar" class="col-xs-3 col-md-3">
          
          <!-- Menu-lateral -->
          <div id="menu_lateral">

           <c:import url="menulateral.jsp" />
           
          </div><!-- /Menu lateral -->
        </div><!-- /Sidebar -->


        <!-- Conteudo -->
        <div id="conteudo" class="col-xs-9 col-md-9">

          <!--Lista de Jogos -->
          <div class="panel panel-success">
            <div class="panel-heading">...</div>
            <div class="panel-body">

            <!-- Barra de filtro -->
            <form class="form-inline" action="listaJogos">
              <div>

                <!-- Busca por nome -->
                <div class="input-group col-md-3">
                  <input type="text" id="inputBusca" name="busca" class="form-control" placeholder="Procurar na Lista">
                  <span class="input-group-btn">
                    <button class="btn btn-success" type="button">Buscar</button>
                  </span>
                </div><!-- /Busca por nome -->

                <!--Filtro por plataformas-->
                <div class="btn-group btn-success col-md-offset-4">
                  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Plataforma <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Plataformas</a></li>
                    <li><a href="#">Playstation 4</a></li>
                    <li><a href="#">Playstation 3</a></li>
                    <li><a href="#">Xone</a></li>
                    <li><a href="#">Xbox 360</a></li>
                    <li><a href="#">Wii U</a></li>
                    <li><a href="#">Wii</a></li>
                    <li><a href="#">DS</a></li>
                    <li><a href="#">3DS</a></li>
                    <li><a href="#">Outros</a></li>
                  </ul>
                </div><!-- /Filtro por plataformas-->

                <!-- Filtros por genêros -->
                <div class="btn-group">
                  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Genêros <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Genêros</a></li>
                    <li><a href="#">Ação</a></li>
                    <li><a href="#">Aventura</a></li>
                    <li><a href="#">Corrida</a></li>
                    <li><a href="#">Tiro</a></li>
                    <li><a href="#">RPG</a></li>
                    <li><a href="#">Luta</a></li>
                    <li><a href="#">Estratégia</a></li>
                    <li><a href="#">Terror</a></li>
                    <li><a href="#">Plataforma</a></li>
                    <li><a href="#">Puzzle</a></li>
                  </ul>
                </div><!-- /Filtro por genêros-->

                <!-- Filtros por relevância -->
                <div class="btn-group">
                  <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Relevância <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Relevância</a></li>
                    <li><a href="#">Ano</a></li>
                    <li><a href="#">Nota</a></li>
                  </ul>
                </div><!-- /Filtro por relevância-->
              </div><!-- /Barra de filtro -->
            </form>

            <br>

			<c:forEach var="jogo" items="${jogos}">
			
            <!-- Jogo -->
            <div class="col-xs-2 col-md-2">

                <!-- Foto do jogo -->
                <div>
                  <a href="jogo?id=${jogo.idJogo}" class="thumbnail">
                    <img src="http://thegamesdb.net/banners/boxart/original/front/${jogo.idJogo}-1.jpg" alt="Photo Jogo" style="min-height:150px;height:150px">
                  </a>
                </div><!-- Foto do jogo -->
                
                <!-- Dados do jogo -->
                <div>
                  <h4 class="text-center">${jogo.gameTitle}</h4>
                </div><!-- /Dados do jogo -->

                <!-- Botãoo para adicionar -->
                <div>
                  <button type="button" class="btn btn-warning btn-block dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Adicionar <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu">
                    <li><a href="#">Quero Jogar</a></li>
                    <li><a href="#">Joguei</a></li>
                    <li><a href="#">Jogando</a></li>
                    <li><a href="#">Terminei</a></li>
                  </ul>
                </div><!-- Botão para adicionar -->
              </div><!-- Jogo -->
              </c:forEach>
            </div>
          </div><!-- /Lista de Jogos -->
        </div> <!-- /Conteudo -->
      </div> <!-- /Esqueleto -->
    </div> <!-- /Container-fluid -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="resources/js/bootstrap.min.js"></script>

  </body>

</html>