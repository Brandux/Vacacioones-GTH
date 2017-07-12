/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.rrhh.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;





/**
 *
 * @author UPEU
 */
@Controller
public class HomeController {
//    @Autowired
//    private static UsuarioDAO uO;
//    
//    @RequestMapping(value="/")
//    public String main(){	
//            return "main";
//    }
//    @RequestMapping(value="/kk")
//    public String ListarRol(){	
//            return "ListarRol";
//    }
//    
    @RequestMapping(value="/")
    public String login(){	
            return "jspejemplo";
    }
//    @RequestMapping(value = "/login" ,  method = RequestMethod.POST)
//        public ModelAndView Logueo(ModelAndView model ,HttpServletRequest resquest, HttpServletResponse response){
//            String user = resquest.getParameter("user");
//            String Pass = resquest.getParameter("pass");
//            HttpSession sesion = resquest.getSession();
//            UsuarioDTO d =uO.Validar(user, Pass);
//                    if (d != null ) {
//                        resquest.getSession().setAttribute("user", d);
//                        model.setViewName("main");
//                    }else{
//                        sesion.setAttribute("Persona", null);
//                       model.setViewName("index");
//
//                    }
//        return model;
//         }
    
}

