<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>

	<!-- Bootstrap -->
    <link type="text/css" href="resources/css/bootstrap.min.css" rel="stylesheet" />
    <link type="text/css" href="resources/esqueleto.css" rel="stylesheet"  />
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

        <!-- Menu-lateral -->
          <div id="menu_lateral">

            <!-- Foto de perfil -->
            <div>
              <a href="#" class="thumbnail">
                <img src="resources/img/${pessoaLogada.idPessoa}.jpg" alt="Photo Perfil" style="min-height:250px;height:250px">
              </a>
            </div>
			
			<div>
              <h2 class="text-center" style="color:#3c763d">${pessoaLogada.username}</h2>
            </div>
			
            <!-- Grupo de bot�es 1 -->
            <div class="panel panel-success">
              <div class="panel-heading">Lista de Jogos</div>
              <div class="panel-body">
                <p>
                  <a href="listaAdicionado?lista=quero" class="btn btn-success btn-block" role="button">Quero Jogar</a>
                </P>
                <p>
                  <a href="listaAdicionado?lista=joguei" class="btn btn-success btn-block" role="button">Joguei</a>
                </p>
                <p>
                  <a href="listaAdicionado?lista=jogando" class="btn btn-success btn-block" role="button">Jogando</a>
                </p>
                <a href="listaAdicionado?lista=terminei" class="btn btn-success btn-block" role="button">Terminei</a>
              </div>
            </div> <!-- /Grupo de bot�es 1 -->

            <!-- Grupo de bot�es 2 -->
            <div class="panel panel-success">
              <div class="panel-heading">Lista de Usu�rio</div>
              <div class="panel-body">
                <p>
                  <a href="listaSeguido" class="btn btn-success btn-block" role="button">Seguindo</a>
                </p>
                <p>
                  <a href="listaSeguidor" class="btn btn-success btn-block" role="button">Seguidores</a>
                </p>
                <a href="listaPessoas" class="btn btn-success btn-block" role="button">Buscar Usu�rio</a>
              </div>
            </div> <!-- /Grupo de bot�es 2 -->

            <!-- Grupo de bot�es 3 -->
            <div class="panel panel-success">
              <div class="panel-body">
                <p>
                  <button type="button" class="btn btn-success btn-block">Configura��es</button>
                </p>
                <a href="logout" class="btn btn-success btn-block" role="button">Logout</a>
              </div>
            </div><!-- /Grupo de bot�es 3 -->
          </div><!-- /Menu lateral -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   	<script src="resources/js/bootstrap.min.js"></script>
   	
</body>
</html>