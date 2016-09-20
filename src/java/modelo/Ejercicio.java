/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.InputStream;

/**
 *
 * @author Franco
 */
public class Ejercicio {
        
        private int cod_ejer;
        private String nombre_ej;
        private String descripcion;
        private InputStream foto1;
        private InputStream foto2;
        private String fec_aceptacion;
        private String fec_prop;
        private String fec_recha;
        private int id_usu;
        private int id_usuAdmin;
        private int cod_grupom;

    public int getCod_ejer() {
        return cod_ejer;
    }

    public void setCod_ejer(int cod_ejer) {
        this.cod_ejer = cod_ejer;
    }

    public String getNombre_ej() {
        return nombre_ej;
    }

    public void setNombre_ej(String nombre_ej) {
        this.nombre_ej = nombre_ej;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public InputStream getFoto1() {
        return foto1;
    }

    public void setFoto1(InputStream foto1) {
        this.foto1 = foto1;
    }

    public InputStream getFoto2() {
        return foto2;
    }

    public void setFoto2(InputStream foto2) {
        this.foto2 = foto2;
    }

    public String getFec_aceptacion() {
        return fec_aceptacion;
    }

    public void setFec_aceptacion(String fec_aceptacion) {
        this.fec_aceptacion = fec_aceptacion;
    }

    public String getFec_prop() {
        return fec_prop;
    }

    public void setFec_prop(String fec_prop) {
        this.fec_prop = fec_prop;
    }

    public String getFec_recha() {
        return fec_recha;
    }

    public void setFec_recha(String fec_recha) {
        this.fec_recha = fec_recha;
    }

    public int getId_usu() {
        return id_usu;
    }

    public void setId_usu(int id_usu) {
        this.id_usu = id_usu;
    }

    public int getId_usuAdmin() {
        return id_usuAdmin;
    }

    public void setId_usuAdmin(int id_usuAdmin) {
        this.id_usuAdmin = id_usuAdmin;
    }

    public int getCod_grupom() {
        return cod_grupom;
    }

    public void setCod_grupom(int cod_grupom) {
        this.cod_grupom = cod_grupom;
    }
        
        
        
                
}
