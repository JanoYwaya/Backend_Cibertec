package cibertec.capitulo3_base.repository;

import cibertec.capitulo3_base.dto.User;
import jakarta.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;


@Repository
public class UsuarioDAO {

    private List<User> lista;

    @PostConstruct
    private void init() {
        lista = new ArrayList<>();
        lista.add(new User("jywaya", "171197", "Jano Ywaya"));
    }

    public List<User> getLista() {
        return lista;
    }

    public User validarLogin(User usuario) {
        if (usuario.getUser().equalsIgnoreCase("1") && usuario.getPassword().equals("1")) {
            usuario.setNombre("Jano Ywaya");
        } else if (usuario.getUser().isEmpty() || usuario.getPassword().isEmpty()) {
            usuario.setNombre("Vacio");
        } else {
            usuario = null;
        }

        return usuario;
    }

    public void insertarUsuario(User usuario) {
        lista.add(usuario);

    }

    public List<User> listarUsuario() {
        return lista;
    }

    public void eliminarUsuario(String usuario) {
        lista.removeIf(u -> u.getNombre().equalsIgnoreCase(usuario));
    }

    public User encontrarUsuario(String searchName) {

        User hallado = null;

        for (int i = 0; i < lista.size(); i++) {
            if (searchName.equalsIgnoreCase(lista.get(i).getNombre())) {
                hallado = lista.get(i);
                break;
            }
        }

        return hallado;
    }

    public void editarUsuario(User usuario) {

        User hallado = encontrarUsuario(usuario.getAncla());

        if (hallado != null) {
            hallado.setAncla(usuario.getNombre());
            hallado.setUser(usuario.getUser());
            hallado.setNombre(usuario.getNombre());
            hallado.setPassword(usuario.getPassword());
        }

    }

}
