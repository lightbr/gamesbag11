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
  
  	<h1>${pessoaLogada.idPessoa}</h1>
	<h1>${pessoaLogada.username}</h1>
	<h1>${pessoaLogada.email}</h1>
	<h1>${pessoaLogada.senha}</h1>

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

          <!--Lista de Pessoas -->
          <div class="panel panel-success">
            <div class="panel-heading">...</div>
            <div class="panel-body">

            <!-- Barra de filtro -->
            <form class="form-inline" action="listaPessoas">
              <div>

                <!-- Busca por nome -->
                <div class="input-group col-md-3">
                  <input type="text" id="inputBusca" name="busca" class="form-control" placeholder="Procurar na Lista">
                  <span class="input-group-btn">
                    <button class="btn btn-default" type="submit">Buscar</button>
                  </span>
                </div><!-- /Busca por nome -->
              </div>
            </form><!-- Barra de filtro -->

                
            <br>

            <c:forEach var="pessoa" items="${pessoas}">
      			
	            <!-- Pessoa -->
	            <div class="col-xs-2 col-md-2">
	
	                <!-- Foto da pessoa -->
	                <div>
	                  <a href="#" class="miniatura">
	                    <img src="resources/img/${pessoa.idPessoa}.jpg" alt="Photo Pessoa" style="min-height:150px;height:150px">
	                  </a>
	                </div><!-- /Foto da pessoa -->
	                
	                <!-- Dados da pessoa -->
	                <div>
	                  <h4 class="text-center">${pessoa.username}</h4>
	                </div><!-- /Dados da pessoa -->

	                
	              </div><!-- /Pessoa -->
	              </c:forEach>

                
              </div><!-- Pessoa -->
            </div>
          </div><!-- /Lista de Pessoas -->
        </div> <!-- /Conteúdo -->
      </div> <!-- /Esqueleto -->
    </div> <!-- /Container-fluid -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="resources/js/bootstrap.min.js"></script>

  </body>

</html>