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

  <body class="cor-fundo">

    <!-- Container-fluid -->
    <div class="container-fluid">

      <!-- Navbar -->
      <nav class="navbar navbar-success">
       
      	<c:import url="navbar.jsp" />
      	
      </nav><!-- /Navbar -->


      <!-- Esqueleto -->
      <div id="esqueleto" class="row">

        <!-- Sidebar -->
        <div id="sidebar" class="col-xs-12 col-md-3">
          
          <!-- Menu-lateral -->
          <div class="collapse navbar-collapse" id="menu_lateral">

           <c:import url="menulateral.jsp" />
           
          </div><!-- /Menu lateral -->
        </div><!-- /Sidebar -->


        <!-- Conteúdo -->
        <div id="conteudo" class="col-xs-9 col-md-9">

          
          <!-- modal alterar senha -->
          <div class="col-xs-4 col-md-6 col-md-offset-3" > 

            <form class="form-signin">
            <h2 class="form-signin-heading text-center">Alterar a Senha</h2>
            
            <p></p>
            <label for="inputPassword">Digite a senha antiga</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Senha antiga" required>
            <p></p>
            <label for="inputNewPassword">Digite a senha nova</label>
            <input type="password" id="inputNewPassword" class="form-control" placeholder="Senha nova" required>
            <p></p>
            <label for="inputNewPasswordAgain">Confirme a senha nova</label>
            <input type="password" id="iinputNewPasswordAgain" class="form-control" placeholder="Confirme a senha" required>
            <p></p>
            <button class="btn btn-lg btn-success btn-block" type="submit">Salvar</button>
            </form>
          </div><!-- /modal alterar senha -->
          
          
          
          
        </div> <!-- /Conteúdo -->
      </div> <!-- /Esqueleto -->
    </div> <!-- /Container-fluid -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
     <script src="resources/js/bootstrap.min.js"></script>

  </body>

</html>