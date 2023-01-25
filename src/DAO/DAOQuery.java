package DAO;

public class DAOQuery {
    static final String INSERTARALUMNO="insert into usuario(id_usuario,nombre, apellido,matricula,correo,telefono, id_grupo,id_puesto, id_area_puesto,id_tipo_us,id_servicios)values(?,?,? ,?,?,?,?,null,null,1,null);";
    static final String INSERATARDOCENTE="insert into usuario(id_usuario,nombre, apellido,matricula,correo,telefono, id_grupo,id_puesto, id_area_puesto,id_tipo_us,id_servicios)values(?,?,? ,?,?,?,null,null,null,3,null);";
    static final String INSERTARADMINISTRATIVO="insert into usuario(id_usuario,nombre, apellido,matricula,correo,telefono, id_grupo,id_puesto, id_area_puesto,id_tipo_us,id_servicios)values(?,?,?,?,?,?,null,?,?,2,null);";

    final static String ELIMINARUSUARIO = "DELETE FROM usuario WHERE id_usuario = ?;";


    static final  String CONSUTARALUMNO="";

    static final String TIPOUS="select id_tipo_us from usuario where id_usuario=?;";



}
