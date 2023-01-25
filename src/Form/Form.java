package Form;

import DAO.DAOInsercion;
import DAO.Opciones;
import DTO.DTOUsuario;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Form {
    private JTextArea mostrar;
    private JTextField id;
    private JTextField nombre;
    private JTextField grupo;
    private JTextField carrera;
    private JTextField matricula;
    private JTextField area;
    private JRadioButton docenteRadioButton;
    private JRadioButton alumnoRadioButton;
    private JRadioButton administrativoRadioButton;
    private JButton buscar;
    private JButton resgistrar;
    private JButton eliminar;
    private JButton actualizarButton;
    private JButton mostrarOdosLosUsuariosButton;
    private JButton alumnoDatosButton;
    private JButton alumnosYCarreraButton;
    private JTextField apellido;
    private JTextField correo;
    private JTextField telefono;
    private JPanel panel;

    public Form(){

        buscar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(!id.getText().isEmpty()){

                }else if(!nombre.getText().isEmpty()){

                } else if (!matricula.getText().isEmpty()) {

                }else {
                    mostrar.setText("No ha ingresado los campos para la busqueda");
                }
            }
        });
        resgistrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                DTOUsuario usuario;
                int estado=0;
                if(alumnoRadioButton.isSelected()){
                    nombre.getText();
                    apellido.getText();
                    matricula.getAction();
                    correo.getText();
                    telefono.getText();
                    usuario=new DTOUsuario(nombre.getText(),apellido.getText(),matricula.getText(),correo.getText(), telefono.getText(), Opciones.grupo(grupo.getText()));
                    estado=DAOInsercion.insertarUsuarioAlumno(usuario);
                }else if(administrativoRadioButton.isSelected()){
                    usuario=new DTOUsuario(nombre.getText(),apellido.getText(),matricula.getText(),correo.getText(), telefono.getText(),Opciones.area(area.getText() ));
                    estado=DAOInsercion.insertarUsuarioAd(usuario);
                } else if (docenteRadioButton.isSelected()) {
                    usuario=new DTOUsuario(nombre.getText(),apellido.getText(),matricula.getText(),correo.getText(), telefono.getText());
                    estado=DAOInsercion.insertarUsuarioDo(usuario);
                }else {
                    mostrar.setText("No ha elegido tipo de usuario");
                }
                if(estado==1){
                    mostrar.setText("Correcto");
                }else{
                    mostrar.setText("Incorrecto");
                }
            }
        });
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("Formulario");
        frame.setContentPane(new Form().panel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

}
