package DAO;

public class Opciones {

    public static int grupo(String grupo){
        int id;
        switch (grupo){
            case "101":
                id=1;
                break;
            case "102":
                id=2;
                break;
            case "103":
                id=3;
                break;
            case "104":
                id=4;
                break;
            case "105":
                id=5;
                break;
            default:
                id=0;
                break;

        }
        return id;
    }
    public static int area(String grupo){
        int id;
        switch (grupo){
            case "Servicios Escolares":
                id=1;
                break;
            case "Biblioteca":
                id=2;
                break;
            case "Departamento de Red":
                id=3;
                break;
            case "Recursos Humanos":
                id=4;
                break;
            case "Financieros":
                id=5;
                break;
            case "Almacen":
                id=6;
                break;
            default:
                id=0;
                break;

        }
        return id;
    }
}
