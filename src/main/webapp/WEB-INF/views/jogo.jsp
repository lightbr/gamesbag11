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

        <!-- Conteúdo -->
        <div id="conteudo" class="col-xs-9 col-md-9">

          <!-- Dados do jogo -->
          <div class="col-xs-9 col-md-9">
            <h1>${jogo.gameTitle}</h1>
            <h3>Plataformas:<small>${jogo.platform}</small> Desenvolvedora:<small>${jogo.developer}</small></h3>
            <h3>Data de Lançamento:<small>${jogo.releaseDate}</small> Produtora:<small>${jogo.publisher}</small></h3>
            <h3>Gênero:<small>${jogo.genre}</small> ESRB:<small>${jogo.esrb}</small></h3>
            <h3>Rating:<span class="label label-success">${jogo.rating}</span> Notas do usuário:<span class="label label-success">0</span></h3>
            <h3>De sua nota:</h3>

            <!-- Sistema de notas -->
            <div class="btn-group" role="group" aria-label="...">
              <button type="button" class="btn btn-warning">0</button>
              <button type="button" class="btn btn-warning">1</button>
              <button type="button" class="btn btn-warning">2</button>
              <button type="button" class="btn btn-warning">3</button>
              <button type="button" class="btn btn-warning">4</button>
              <button type="button" class="btn btn-warning">5</button>
              <button type="button" class="btn btn-warning">6</button>
              <button type="button" class="btn btn-warning">7</button>
              <button type="button" class="btn btn-warning">8</button>
              <button type="button" class="btn btn-warning">9</button>
              <button type="button" class="btn btn-warning">10</button>
            </div><!-- /Sistema de notas -->
            <h3>Sinopse</h3>
            <p>${jogo.overview}</p>
          </div><!-- /Dados do jogo -->
          
          <!-- Foto do jogo -->
          <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
              <img src="http://thegamesdb.net/banners/boxart/original/front/${jogo.idJogo}-1.jpg" alt="Photo Perfil" style="min-height:300px;height:300px">
            </a>
          </div><!-- Foto do jogo -->

          <!-- Botão para adicionar -->
          <div class="col-xs-3 col-md-3" >
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
        </div> <!-- /Conteúdo -->
      </div> <!-- /Esqueleto -->
    </div> <!-- /Container-fluid -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="resources/js/bootstrap.min.js"></script>

  </body>

</html>