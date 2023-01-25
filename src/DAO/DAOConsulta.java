package DAO;

import DTO.DTOAdministrativi;
import DTO.DTOAlumno;
import DTO.DTOUsuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOConsulta {
    static void consultarUsuarios(DTOUsuario usuario){

    }

    public static int consutarUsuario(int id){
        int tipo = 0;
        try{
            Connection connection=DAOConection.abrirConexion();

            PreparedStatement preparedStatement=connection.prepareStatement(DAOQuery.TIPOUS);

            preparedStatement.setInt(1,id);

            ResultSet resultSet=preparedStatement.executeQuery();
            if(resultSet.next()){
                tipo= resultSet.getInt("id_tipo_id");
            }

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return tipo;
    }
}
