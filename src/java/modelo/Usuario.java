/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Castblam-Note1
 */
public class Usuario {
    private int id;
    private String nombre;
    private String apellido;
    private String mail;
    private String username;
    private String pass;
    private String fec_nac;
    private Boolean estado_adm;
    private Boolean estado_cuenta;
    
    public Boolean getEstado_cuenta(){
            return estado_cuenta;
            };
    public int getId(){
            return id;
            };
    public String getNombre(){
            return nombre;
            };
    public String getApellido(){
            return apellido;
            };
    public String getMail(){
            return mail;
            };
    public String getUsername(){
            return pass;
            };
    public String getPass(){
            return pass;
            };
    public String getFec_nac(){
            return fec_nac;
            };
    public Boolean getEstado_adm(){
            return estado_adm;
            };

    public void setEstado_cuenta(Boolean estado_cuenta){
            this.estado_cuenta= estado_cuenta;
            };
    public void setId(int id){
            this.id = id;
            };
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setFec_nac(String fec_nac) {
        this.fec_nac = fec_nac;
    }

    public void setEstado_adm(Boolean estado_adm) {
        this.estado_adm = estado_adm;
    }
    
}
