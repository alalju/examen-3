package DAO;

import DTO.DTOAdministrativi;
import DTO.DTODocente;
import DTO.DTOUsuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAOEliminacion {
    static int eliminarUsuario(int id_usuario){
        int fila = 0;
        try{
            Connection connection = DAOConection.abrirConexion();
            PreparedStatement preparedStatement = connection.prepareStatement(DAOQuery.ELIMINARUSUARIO);

            preparedStatement.setInt(1, id_usuario);

            fila = preparedStatement.executeUpdate();

        }catch (SQLException ex)
        {
            System.out.println(ex.getMessage());
        }
        return fila;
    }


}
