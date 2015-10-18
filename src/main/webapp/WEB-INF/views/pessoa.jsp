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


        <!-- Conteúdo -->
        <div id="conteudo" class="col-xs-9 col-md-9">

            <!-- Nome do usuário -->
          <div class="col-xs-9 col-md-9">
            <h1>Nome do Usuário</h1>
          </div><!-- /Nome do usuário -->

          <!-- Foto do usuário -->
          <div class="col-xs-3 col-md-3">
            <a href="#" class="thumbnail">
              <img src="..." alt="Photo Perfil" style="min-height:200px;height:200px">
            </a>
          </div><!-- Foto do usuário -->

            <!-- Botão para seguir -->
          <div class="col-xs-3 col-md-3 col-md-offset-9">
            <input class="btn btn-warning btn-block" type="button" value="Seguir">
          </div><!-- /Botão para seguir -->

          <!-- Lista de jogos do usuário -->
          <div>
            <ul class="nav nav-tabs">
              <li role="presentation" class="active"><a href="#">Quero Jogar<small>(...)</small></a></li>
              <li role="presentation"><a href="#">Joguei<small>(...)</small></a></li>
              <li role="presentation"><a href="#">Jogando<small>(...)</small></a></li>
              <li role="presentation"><a href="#">Terminei<small>(...)</small></a></li>
            </ul>
          </div><!-- /Lista de jogos do usuário -->
        </div> <!-- /Conteúdo -->
      </div> <!-- /Esqueleto -->
    </div> <!-- /Container-fluid -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="resources/js/bootstrap.min.js"></script>

  </body>

</html>