package cibertec.capitulo3_base.service;

import cibertec.capitulo3_base.dto.User;
import cibertec.capitulo3_base.repository.UssuarioDAO;
import cibertec.capitulo3_base.repository.UsuarioDAO;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {

    @Autowired
    private UssuarioDAO usuarioDAO;

    public User validar(User usuario) {

        User encontrado=encontrarUsuario(usuario.getUser());
        
        return encontrado;
    }

    public void insertarUsuario(User usuario) {
        usuarioDAO.save(usuario);
    }

    public List<User> obtenerUsuarios() {
        return usuarioDAO.findAll();
    }

    public User encontrarUsuario(String usuario) {

        Optional respuesta=usuarioDAO.findById(usuario);
        return respuesta.isPresent()?(User) respuesta.get(): null;
    }
    

}
