<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
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
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="google.com">Games Bag</a>
        </div>
        <div class="collapse navbar-collapse navbar-center" id="bs-example-navbar-collapse-1">
          <form class="navbar-form" role="search">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Buscar no Games Bag">
            </div>
            <button type="submit" class="btn btn-success">Buscar</button>
          </form>
        </div>
      </nav><!-- /Navbar -->


      <!-- Esqueleto -->
      <div id="esqueleto" class="row">

        <!-- Sidebar -->
        <div id="sidebar" class="col-xs-3 col-md-3">
          
          <!-- Menu-lateral -->
          <div id="menu_lateral">

            <!-- Foto de perfil -->
            <div>
              <a href="#" class="thumbnail">
                <img src="..." alt="Photo Perfil" style="min-height:250px;height:250px">
              </a>
            </div>

            <!-- Grupo de botões 1 -->
            <div class="panel panel-success">
              <div class="panel-heading">Lista de Jogos</div>
              <div class="panel-body">
                <p>
                  <button type="button" class="btn btn-success btn-block">Quero Jogar</button>
                </P>
                <p>
                  <button type="button" class="btn btn-success btn-block">Joguei</button>
                </p>
                <p>
                  <button type="button" class="btn btn-success btn-block">Jogando</button>
                </p>
                <button type="button" class="btn btn-success btn-block">Terminei</button>
              </div>
            </div> <!-- /Grupo de botões 1 -->

            <!-- Grupo de botões 2 -->
            <div class="panel panel-success">
              <div class="panel-heading">Lista de Usuário</div>
              <div class="panel-body">
                <p>
                  <button type="button" class="btn btn-success btn-block">Seguindo</button>
                </p>
                <p>
                  <button type="button" class="btn btn-success btn-block">Seguidores</button>
                </p>
                <button type="button" class="btn btn-success btn-block">Buscar Usuários</button>
              </div>
            </div> <!-- /Grupo de botões 2 -->

            <!-- Grupo de botões 3 -->
            <div class="panel panel-success">
              <div class="panel-body">
                <p>
                  <button type="button" class="btn btn-success btn-block">Configurações</button>
                </p>
                <button type="button" class="btn btn-success btn-block">Logout</button>
              </div>
            </div><!-- /Grupo de botões 3 -->
          </div><!-- /Menu lateral -->
        </div><!-- /Sidebar -->


        <!-- Conteudo -->
        <div id="conteudo" class="col-xs-9 col-md-9">

          <!--Lista de Jogos -->
          <div class="panel panel-success">
            <div class="panel-heading">...</div>
            <div class="panel-body">

            <!-- Barra de filtro -->
            <form class="form-inline">
              <div>

                <!-- Busca por nome -->
                <div class="input-group col-md-3">
                  <input type="text" class="form-control" placeholder="Procurar na Lista">
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

            <!-- Jogo -->
            <div class="col-xs-2 col-md-2">

                <!-- Foto do jogo -->
                <div>
                  <a href="#" class="miniatura">
                    <img src="..." alt="Photo Jogo" style="min-height:150px;height:150px">
                  </a>
                </div><!-- Foto do jogo -->
                
                <!-- Dados do jogo -->
                <div>
                  <h4 class="text-center">Nome do Jogo</h4>
                </div><!-- /Dados do jogo -->

                <!-- Botão para adicionar -->
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