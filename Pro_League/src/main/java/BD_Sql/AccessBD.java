package BD_Sql;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import Model.Jugador;
import java.sql.*;


public class AccessBD {
	/* Atributos privados. Constantes y est�ticos. */
	
	public final static String URL = "jdbc:mysql://localhost:3306/liga_futbol";
	public final static String USER = "root";
	public final static String PASSWORD = "toorDam2";
	public static Connection con;


	static {
		try {
			con = DriverManager.getConnection(URL, USER, PASSWORD);

			System.out.println("Conexión realizada con éxito");
		} catch (SQLException e) {
			System.out.println(e);
		} 
	}

	/***
	 * M�todo que lee unn jugador de una Base de Datos.
	 * @return ArrayList de Jugador.
	 */
	public static ArrayList<Jugador> traerJugadores(int numeroJugadores) {

		ArrayList<Jugador> listaJugadores = new ArrayList<Jugador>();

		try {
			String sql = "SELECT Id_Jugador, Nombre, Apellidos FROM jugador";

			// Objeto para realizar la conexion
			Statement st = con.createStatement();

			// Objeto que contendra los resultados de la consulta.
			ResultSet rs = st.executeQuery(sql);

			while(rs.next()) {
				Jugador jugadorTemporal = new Jugador();

				int Id_Jugador = rs.getInt("Id_Jugador");
				String NombreJugador = rs.getString("Nombre");
				String ApellidosJugador = rs.getString("Apellidos");


				jugadorTemporal.setId_Jugador(Id_Jugador);
				jugadorTemporal.setNombre(NombreJugador);
				jugadorTemporal.setApellidos(ApellidosJugador);


				listaJugadores.add(jugadorTemporal);
			}

			rs.close();

		} catch (Exception e) {
			System.out.println("No se ha podido recuperar los datos.");
			System.out.println(e);
		}

		return listaJugadores;
	}
}
