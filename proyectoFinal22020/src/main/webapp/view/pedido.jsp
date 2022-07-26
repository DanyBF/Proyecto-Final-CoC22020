<!doctype html>
<html lang="es">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Registro de Pedido</title>

  <!--Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

    <!-- style propios -->
    <link rel="stylesheet" href="./css/style.css" type="text/css">
    <!--Bootstrap link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
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
			
    <h2>Formulario de Pedido</h2>
    <p class="lead">La fecha de entrega será coordinada telefónicamente.</p>
  </div>

<div class="container">
  <div class="col-md-12 text-center">
    <h4 class="mb-3">Tu pedido</h4>
    <form  action="../controller/guardarPedido.jsp" method="POST">
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="firstName">Nombre</label>
          <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Tu nombre" value="" required>
          <div class="invalid-feedback">
            Debe ingresar su nombre.
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="lastName">Apellido</label>
          <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Tu apellido" value="" required>
          <div class="invalid-feedback">
            Faltó ingresar el apellido.
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12 mb-3">
	        <label for="username">Nombre de Usuario</label>
	        <div class="input-group">
	          <div class="input-group-prepend">
	            <span class="input-group-text">@</span>
	          </div>
	          <input type="text" class="form-control" id="username" name="username" placeholder="Usuario" required>
	          <div class="invalid-feedback" style="width: 100%;">
	            Faltó ingresar el usuario.
	          </div>
	        </div>
	      </div>
	   </div>

      <div class="row">
        <div class="col-md-12 mb-3">
	        <label for="email">Email <span class="text-muted">(Optional)</span></label>
	        <input type="email" class="form-control" id="email"  name="email" placeholder="tumail@gmail.com">
	        <div class="invalid-feedback">
	          El e-mail es invÃ¡lido.
	        </div>
	      </div>
	   </div>	  

      <div class="row">
        <div class="col-md-12 mb-3">
	        <label for="address">Lugar de Entrega</label>
	        <input type="text" class="form-control" id="address" name="address" placeholder="Calle, nro,  localidad..." required>
	        <div class="invalid-feedback">
	          Faltó ingresar el domicilio de entrega.
	        </div>
	      </div>
	   </div>



      <div class="row">
        <div class="col-md-5 mb-3">
          <label for="country">Localidad</label>
          <select class="form-select d-block w-100" id="country" name="country" required>
            <option value="">Seleccioná.</option>
            <option value="1">Moreno</option>
             <option value="2">Guaymallén</option>
              <option value="3">Cafayate</option>
               <option value="4">Cruz Alta</option>
                <option value="5">Quilmes</option>
                 <option value="6">Berazategui</option>
                  <option value="7">Colon</option>
                   <option value="8">Arroyito</option>
          </select>
          <div class="invalid-feedback">
            Seleccioná una localidad válida.
          </div>
        </div>
        <div class="col-md-4 mb-3">
          <label for="state">Provincia</label>
          <select class="form-select d-block w-100" id="state" name="state" required>
            <option value="">Seleccioná.</option>
            <option value="1">Tucumán</option>
            <option value="2">Salta</option>
            <option value="3">Buenos Aires</option>
            <option value="4">Mendoza</option>
            <option value="5">Neuquen</option>
            <option value="6">Entre Ríos</option>
          </select>
          <div class="invalid-feedback">
            Seleccioná una provincia válida.
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="zip">Cod.Postal</label>
          <input type="text" class="form-control" id="zip" name="zip" placeholder="" required>
          <div class="invalid-feedback">
            Faltó ingresar el Código Postal.
          </div>
        </div>
      </div>


      <hr class="mb-6">

      <h4 class="mb-3">Forma de Pago</h4>

      <div class="d-block my-3">
        <div class="custom-control custom-radio">
          <input id="credit" name="paymentMethod" type="radio" class="custom-control-input" checked required>
          <label class="custom-control-label" for="credit">Tarjeta de Crédito</label>
        </div>
        <div class="custom-control custom-radio">
          <input id="debit" name="paymentMethod" type="radio" class="custom-control-input" required>
          <label class="custom-control-label" for="debit">Mercado Pago</label>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="cc-name">Nombre del Titular de la Tarjeta</label>
          <input type="text" class="form-control" id="cc-name" name="cc-name" placeholder="" required>
          <small class="text-muted">Nombre como se muestra en la tarjeta</small>
          <div class="invalid-feedback">
            El nombre debe ser ingresado.
          </div>
        </div>
        <div class="col-md-6 mb-3">
          <label for="cc-number">Número de la tarjeta</label>
          <input type="text" class="form-control" id="cc-number" name="cc-number" placeholder="" required>
          <div class="invalid-feedback">
            El número es obligatorio.
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 mb-3"></div>
        <div class="col-md-3 mb-3">
          <label for="cc-expiration">Fecha de Vto.</label>
          <input type="text" class="form-control" id="cc-expiration" name="cc-expiration" placeholder="" required>
          <div class="invalid-feedback">
            Falta ingresar la fecha de Vto.
          </div>
        </div>
        <div class="col-md-3 mb-3">
          <label for="cc-cvv">Código</label>
          <input type="text" class="form-control" id="cc-cvv" name="cc-cvv" placeholder="" required>
          <div class="invalid-feedback">
            Nro de seguridad obligatorio.
          </div>
        </div>
      </div>
      <hr class="mb-4">
      <div class="row">
        <div class="col-4"></div>
        <div class="col-4">
          <button class="btn btn-primary btn-lg btn-block" type="submit"id=butn>Ingresar la Solicitud</button>
        </div>
      </div>
    </form>
  </div>
 </div>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2017-2020 Codo a Codo</p>
  </footer>


  <script src="./js/form-validation.js"></script>
  
	 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
</body>

</html>