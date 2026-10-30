package cibertec.capitulo3_base.controller;

import cibertec.capitulo3_base.dto.User;
import cibertec.capitulo3_base.service.UsuarioService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;
    
    @RequestMapping({"/", "login"})
    public String login() {
        return "login";
    }

    @RequestMapping("loginAccion")
    public ModelAndView loginAccion(User usuario) {

        ModelAndView rpta;
        User validado = usuarioService.validar(usuario);

        if (validado != null) {
            if (validado.getNombre() != "Vacio") {
                rpta = new ModelAndView("usuarioLista", "lista",  usuarioService.obtenerUsuarios());
            } else {
                rpta = new ModelAndView("login", "mensaje", "Completa los campos");
            }
        } else {
            rpta = new ModelAndView("login", "mensaje", "Credenciales Invalidas");
        }
        return rpta;
    }
}
