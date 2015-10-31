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
    <title>Login</title>

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



    <div class="container-fluid">
      <div class="col-md-4 col-md-offset-4">
        <form class="form-signin" action="efetuaLogin" method="post">
          <h2 class="form-signin-heading text-center">Seja bem-vindo ao Games Bag!</h2>
          <label for="inputEmail">Endereço de email</label>
          <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email" required autofocus>
          <p></p>
          <label for="inputPassword">Senha</label>
          <input type="password" id="inputPassword" name="senha" class="form-control" placeholder="Senha" required>
          <div class="checkbox">
            <label>
              <input type="checkbox" value="remember-me"> Lembre-me
            </label>
          </div>
          <button class="btn btn-lg btn-success btn-block" type="submit">Entrar</button>
        </form>
        <br>
        <br>
        <p > Esqueceu sua senha? <a href="esqueci.jsp">Clique aqui</a> </p>
        <br>
        <p > Não faz parte da party? <a href="novoCadastro">Cadastre-se logo!</a> </p>
      </div>
    </div> <!-- /container -->







    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
  </body>
</html>