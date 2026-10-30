package cibertec.capitulo3_base.dto;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;

@Entity
@Table(name="usuario")
public class User {

    @Id
    @Column(name="usuario")
    private String user;
    @Column(name="clave")
    private String password;
    @Column(name="nomCompleto")
    private String nombre;
    
    @Transient
    private String ancla;

    public String getAncla() {
        return ancla;
    }

    public void setAncla(String ancla) {
        this.ancla = ancla;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public User() {
    }

    public User(String user, String password, String nombre) {
        this.user = user;
        this.password = password;
        this.nombre = nombre;
        this.ancla = this.nombre;
    }

}
