<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Crear Usuario</title>

 <!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

 <link rel="stylesheet" href="./css/style.css" type="text/css">
 </head>
</head>

<body class="bg-light">
<header>
        <div class="container py-4 "></div>
</header>
   <!--barra de navegacion-->
   <nav class="navbar navbar-expand-lg fixed-top navbar-scroll">
    <div class="container-fluid">
        <span class="navbar-brand mb-0 h1">Proyecto Final</span>
<!--collapse en boton hacia abajo-->
      <button class="navbar-toggler" type="button"  data-toggle="collapse" data-target="#navbarCollapse">
        <span class="navbar-toggler-icon" ></span>
      </button>
      <div class="collapse navbar-collapse " id="navbarCollapse">
      <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="inicio.html">Inicio</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Usuarios </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="altaUsuario.jsp">Crear Usuario</a>
              <a class="dropdown-item" href="listarUsuarios.jsp">Listado de Usuarios</a>
            </div>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Pedidos </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="pedidoC.jsp">Cargar Pedido</a>
                    <a class="dropdown-item" href="listarPedidosC.jsp">Listado de Pedidos</a>
                </div>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Acerca de Nosotros </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="inicio.html#hist">Nuestra Historia</a>
                  <a class="dropdown-item" href="inicio.html#mis">Nuestra Misión</a>
                </div>
             <li class="nav-item">
                <a class="nav-item nav-link disabled" href="#">Contacto</a>
              </li>
        </ul>
     </div>
    </div>
   </nav>
  <div class="py-4 text-center">
  <img class="d-block mx-auto mb-4" src="./images/logo.jpg"
			alt="Logo caba"  id=Logo>
    <h2>Crear Usuario</h2>
    <p class="lead">Página para crear un usuario que nos permitirá acceder al sistema.</p>
  </div>
  
    <div class="col-md-12 text-center">
    	<form action="../controller/guardarUsuario.jsp" method="POST">
		     <div class="row">
		       <div class="col-md-6 mb-3">
		         <label for="user">Usuario</label>
		         <input type="text" class="form-control" id="user" name="user" placeholder="Tu usuario" value="" required>
		         <div class="invalid-feedback">
		           Debe ingresar su nombre.
		         </div>
		       </div>
		       <div class="col-md-6 mb-3">
		         <label for="pass">Contraseña</label>
		         <input type="password" class="form-control" id="pass" name="pass" placeholder="Tu contraseña" value="" required>
		         <div class="invalid-feedback">
		           Faltó ingresar el apellido.
		         </div>
		       </div>
		     </div>    	
		     
		      <hr class="mb-4">
		      
		      <div class="row">
		        <div class="col-4"></div>
		        <div class="col-4">
		          <button class="btn btn-primary btn-lg btn-block" type="submit">Ingresar la Solicitud</button>
		        </div>
		      </div>		     
    	</form>
	</div>  

	 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
</body>
</html>