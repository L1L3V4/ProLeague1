<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="BD_Sql.*" %>  
<%@ page import="Model.*" %>  
<%@ page import="Control.*" %>
<%@ page import="View.*" %>

    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Pro League</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="./static/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
  </head>
  <body>
  <!-- Parte de Java -->
  		<%
		ArrayList<Jugador> listaJugadores = new ArrayList<Jugador>();
		listaJugadores = AccessBD.traerJugadores(2);
	%>
	
	
  
  
  
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#!">Pro League<img src="./static/images/Logo3Blanco.png" width="50" height="50"></a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="index.html"
                >Home</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="calendario.html">Calendario</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="clasificacion.html">Clasificacion</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="equipos.html">Equipos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="jugadores.html">Jugadores</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="entrenadores.html">Entrenadores</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div class = "equipos-header text-white">
      <br>
      <h7>Inicio > Pro League > Jugadores</h7>
      <h4>Tabla Información Jugadores de la Pro League</h4>
      <br>
      <hr>
    </div>

      <!--Tabla info jugadores-->
      <div class="w3-container">
      <!--RELLENAR AQUI --> 
      <table class="w3-table-all clasificacion">
			<tr class= "w3-deep-black bg-dark text-white">
				<th colspan="4">Listado de Jugadores</th>
			</tr>
			<tr class= "w3-deep-black bg-dark text-white">
				<th>ID Persona</th>
				<th colspan="2">Nombre</th>
				<th colspan="2">Apellidos</th>
			</tr>
			
			<%
				for (int i = 0; i < listaJugadores.size(); i++) {
					Jugador jugadorTemporal = listaJugadores.get(i);
					
					out.println("<tr><td>" + jugadorTemporal.getId_Jugador() + "</td>" 
					+ "<td>" + jugadorTemporal.getNombre() + "<td>"
					+ "<td>" + jugadorTemporal.getApellidos() + "</td></tr>");
				}
			%>
			
			
		</table>
        
      </div>

    

      <!-- Put anything you want here! The spacer below with inline CSS is just for demo purposes!-->
      <div style="height: 20rem;"></div>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">
          Copyright &copy; Pro League 2022
        </p>
        <br/>
        <p class="m-0 text-center text-white">
            Patrocinadores Oficiales
          </p>
      </div>
      <!--Logos patrocinadores-->
      <div class="flex-container">
        <div class="flex-item">
          <img src="./static/images/./patrocinadores/nike.png" style="width: 100px;" />
        </div>

        <div class="flex-item">
          <img
            src="./static/images/./patrocinadores/cesur.png"
            style="width: 100px;"
          />
        </div>

        <div class="flex-item">
          <img
            src="./static/images/./patrocinadores/Burguer.png"
            style="width: 150px;"
          />
        </div>

        <div class="flex-item">
          <img
            src="./static/images/./patrocinadores/Microsoft.png"
            style="width: 150px;"
          />
        </div>

        <div class="flex-item">
          <img
            src="./static/images/./patrocinadores/santander.png"
            style="width: 150px;"
          />
        </div>
      </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
  </body>
</html>