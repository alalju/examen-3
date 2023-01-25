package DAO;

import DAO.DAOConection;
import DAO.DAOQuery;
import DTO.DTOAdministrativi;
import DTO.DTOAlumno;
import DTO.DTODocente;
import DTO.DTOUsuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOInsercion {
    public static int insertarUsuarioAlumno(DTOUsuario usuario){
        int filas=0;
        try{
            Connection connection = DAOConection.abrirConexion();
            PreparedStatement statement =  connection.prepareStatement("select * from usuario");
            ResultSet resultSet = statement.executeQuery();
            int count = 0;
            while (resultSet.next()) {
                count++;
            }
            PreparedStatement preparedStatement = connection.prepareStatement(DAOQuery.INSERTARALUMNO);

            preparedStatement.setInt(1, count+1);
            preparedStatement.setString(2, usuario.getNombre());
            preparedStatement.setString(3, usuario.getApellido());
            preparedStatement.setString(4, usuario.getMatricula());
            preparedStatement.setString(5, usuario.getCorreo());
            preparedStatement.setString(6, usuario.getTelefono());
            preparedStatement.setInt(7, usuario.getId_grupo());

            filas = preparedStatement.executeUpdate();

            //Verificamos las filas afectadas
            if (filas == 1){
                System.out.println("Elementos insertados de manera correcta..");
            }
            else {
                throw new RuntimeException("Ha ocurrido un erro lo siento");
            }
        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
        return filas;
    }
    public static int insertarUsuarioDo(DTOUsuario usuario){
        int filas=0;
        try{
            Connection connection = DAOConection.abrirConexion();
            PreparedStatement statement =  connection.prepareStatement("select * from usuario");
            ResultSet resultSet = statement.executeQuery();
            int count = 0;
            while (resultSet.next()) {
                count++;
            }
            PreparedStatement preparedStatement = connection.prepareStatement(DAOQuery.INSERATARDOCENTE);

            preparedStatement.setInt(1, count+1);
            preparedStatement.setString(2, usuario.getNombre());
            preparedStatement.setString(3, usuario.getApellido());
            preparedStatement.setString(4, usuario.getMatricula());
            preparedStatement.setString(5, usuario.getCorreo());
            preparedStatement.setString(6, usuario.getTelefono());

            filas = preparedStatement.executeUpdate();

            //Verificamos las filas afectadas
            if (filas == 1){
                System.out.println("Elementos insertados de manera correcta..");
            }
            else {
                throw new RuntimeException("Ha ocurrido un erro lo siento");
            }
        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
        return filas;
    }
    public static int insertarUsuarioAd(DTOUsuario usuario){
        int filas=0;
        try{
            Connection connection = DAOConection.abrirConexion();
            PreparedStatement statement =  connection.prepareStatement("select * from usuario");
            ResultSet resultSet = statement.executeQuery();
            int count = 0;
            while (resultSet.next()) {
                count++;
            }
            PreparedStatement preparedStatement = connection.prepareStatement(DAOQuery.INSERTARADMINISTRATIVO);

            preparedStatement.setInt(1, count+1);
            preparedStatement.setString(2, usuario.getNombre());
            preparedStatement.setString(3, usuario.getApellido());
            preparedStatement.setString(4, usuario.getMatricula());
            preparedStatement.setString(5, usuario.getCorreo());
            preparedStatement.setString(6, usuario.getTelefono());
            preparedStatement.setInt(7, usuario.getId_puesto());
            preparedStatement.setInt(8, usuario.getId_area_puesto());

            filas = preparedStatement.executeUpdate();

            //Verificamos las filas afectadas
            if (filas == 1){
                System.out.println("Elementos insertados de manera correcta..");
            }
            else {
                throw new RuntimeException("Ha ocurrido un erro lo siento");
            }
        }catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
        return filas;
    }

}
