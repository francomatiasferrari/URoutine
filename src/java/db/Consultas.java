/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.concurrent.ExecutionException;
import modelo.Usuario;


/**
 *
 * @author Castblam-Note1
 */
public class Consultas extends Conexion{
    
 
    public Usuario Validacion(String usuario, String pass) throws SQLException 
          {
        Statement s = con.createStatement();
        ResultSet rs = null;
        Usuario usu = new Usuario();
        String consulta = "SELECT * FROM personas WHERE usu = '"+usuario+"' and pass='"+pass+"'";
        rs = s.executeQuery(consulta);
        if(rs.next()){
            
            usu.setUsername(rs.getString(5));
            usu.setNombre(rs.getString(2));
            usu.setPass(rs.getString(6));
            usu.setApellido(rs.getString(3));
            usu.setMail(rs.getString(4));
            usu.setFec_nac(rs.getString(8));
            usu.setEstado_adm(rs.getBoolean(9));
            return usu;
            }
        else {
            return usu;
            }
    }
    
    public int TraerUltimoId () throws SQLException {
        Statement s1 = con.createStatement();
        ResultSet rs = null;
        String consulta = "SELECT personas.id_usu FROM personas  WHERE personas.id_usu = (SELECT MAX(id_usu)  FROM personas)";
        rs = s1.executeQuery(consulta);
        rs.next();
        int ultimoIdNum = rs.getInt("id_usu");
        int ultimoIdAumentado=ultimoIdNum+1;
        
        return ultimoIdAumentado;
        }
    
    public boolean RegistrarUsuario(Usuario usu) throws SQLException 
          {
       
        Statement s = con.createStatement();
        ResultSet rs = null;
        try{
        int ultimoId = TraerUltimoId();
        String consulta = "INSERT INTO `personas` (`id_usu`, `nombre`, `apellido`, `mail`, `usu`, `pass`, `foto`, `fec_nac`, `estado_adm`, `estado_cuenta`) values ("+ultimoId+",'"+usu.getNombre()+"','"+usu.getApellido()+"','"+usu.getMail()+"','"+usu.getUsername()+"','"+usu.getPass()+"',NULL,'"+usu.getFec_nac()+"',0,0);";
        s.executeUpdate(consulta);
        }
        catch(SQLException ex){
        }
        return true;
        }
    
        public int TraerCantUsu (String adm, String cuenta) throws SQLException {
        Statement s1 = con.createStatement();
        ResultSet rs = null;
        String consulta = "select count(*) from personas p where (p.`ESTADO_ADM`="+adm+" and p.`ESTADO_CUENTA`="+cuenta+")";
        rs = s1.executeQuery(consulta);
        rs.next();
        int cantidad = rs.getInt(1);
        return cantidad;
        }
        
        public int TraerCantEjer (String n1, String n2) throws SQLException {
        Statement s1 = con.createStatement();
        ResultSet rs = null;
        String consulta = "select count(*) from ejercicios e where e.`FEC_ACEPTACION` is"+n1+"null and e.`FEC_PROP` is not null and e.`FEC_RECHA` is"+n2+"null ;";
        rs = s1.executeQuery(consulta);
        rs.next();
        int cantidad = rs.getInt(1);
        return cantidad;
        }
    

}
