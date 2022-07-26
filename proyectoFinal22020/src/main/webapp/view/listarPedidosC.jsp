<!doctype html>

<%@page import="model.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="dao.PedidoDAOC"%>
<html lang="en">

<head>
  <title>Listado Pedidos</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

<body class="text-center bg-light">
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


  <div class="container">
    	<div class="py-4 text-center">
		<img class="d-block mx-auto mb-4" src="./images/logo.jpg"
			alt="Logo caba"  id=Logo>
		<h2>Pedidos</h2>
      <p class="lead">Listado de Pedidos</p>
    </div>

    <table class="table table-hover table-sm table-bordered">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#ID</th>
          <th scope="col">Nombre</th>
          <th scope="col">Apellido</th>
          <th scope="col">Email</th>
          <th scope="col">Domicilio</th>
          <th scope="col">Localidad</th>
          <th scope="col">Provincia</th>
          <th scope="col">Código Postal</th>
          <th scope="col">Operaciones</th>
        </tr>
      </thead>
      <tbody>

        <%
        PedidoDAOC dao = new PedidoDAOC();
        List<Pedido> listPed = dao.listarPedidos();
        
        for(Pedido pedido: listPed) {
        	out.println("<tr>");
        	out.println("<td>");
        	out.println(pedido.getIdPedido());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getNombre());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getApellido());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getMail());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getLugarEntrega());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getLocalidad().getNombre());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getLocalidad().getProvincia().getNombre());
        	out.println("</td>");
        	out.println("<td>");
        	out.println(pedido.getCodPostal());
        	out.println("</td>");
        	out.println("<td>");
        	%>
        	
			<a href="editarPedidoC.jsp?idPedido=<% out.println(pedido.getIdPedido()); %>" id=edit>
			
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
</svg>
Editar
			
			</a>
        	
        	
        	<% 
        	out.println("</td>");
        	out.println("</tr>");
        }
      

        %>
        
      </tbody>
    </table>


  </div>


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>