<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GamesBag</title>



<!-- Bootstrap -->
<link type="text/css" href="resources/css/bootstrap.min.css"
	rel="stylesheet" />
<link type="text/css" href="resources/esqueleto.css" rel="stylesheet" />

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
		<nav class="navbar navbar-success"> <c:import url="navbar.jsp" />

		</nav>
		<!-- /Navbar -->


		<!-- Esqueleto -->
		<div id="esqueleto" class="row">

			<!-- Sidebar -->
			<div id="sidebar" class="col-xs-3 col-md-3">

				<!-- Menu-lateral -->
				<div id="menu_lateral">

					<c:import url="menulateral.jsp" />

				</div>
				<!-- /Menu lateral -->
			</div>
			<!-- /Sidebar -->


			<!-- Conteúdo -->
			<div id="conteudo" class="col-xs-9 col-md-9">

				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						<li data-target="#carousel-example-generic" data-slide-to="4"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<a href="jogo?id=161"> <img
								src="http://thegamesdb.net/banners/fanart/original/161-10.jpg"
								alt="First Slide">
							</a>
							<div class="carousel-caption">The Legend of Zelda: Ocarina
								of Time</div>
						</div>
						<div class="item">
							<a href="jogo?id=1255"> 
							<img src="http://thegamesdb.net/banners/fanart/original/1255-7.jpg" alt="Second Slide">
							</a>
							<div class="carousel-caption">Chrono Trigger</div>
						</div>
						<div class="item">
							<a href="jogo?id=525"> 
							<img src="http://thegamesdb.net/banners/fanart/original/525-11.jpg" alt="Third Slide">
							</a>
							<div class="carousel-caption">Final Fantasy VII</div>
						</div>
						<div class="item">
							<a href="jogo?id=216"> 
							<img src="http://thegamesdb.net/banners/fanart/original/216-1.jpg" alt="Fourth Slide">
							</a>
							<div class="carousel-caption">Super Mario 64</div>
						</div>
						<div class="item">
							<a href="jogo?id=196"> 
							<img src="http://thegamesdb.net/banners/fanart/original/196-8.jpg" alt="Fifth Slide">
							</a>
							<div class="carousel-caption">Metal Gear Solid</div>
						</div>

					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

			</div>
			<!-- /Conteúdo -->
		</div>
		<!-- /Esqueleto -->
	</div>
	<!-- /Container-fluid -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="resources/js/bootstrap.min.js"></script>

</body>

</html>