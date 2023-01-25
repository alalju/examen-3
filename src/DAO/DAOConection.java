package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAOConection {
    public static Connection abrirConexion() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(DAOConfig.URL, DAOConfig.USER, DAOConfig.PASSWORD);
            System.out.println("La conexión se ha realizado de manera exitosa...");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return connection;
    }



    public static void cerrarDb(Connection connection){
        try{
            connection.close();
        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
}
