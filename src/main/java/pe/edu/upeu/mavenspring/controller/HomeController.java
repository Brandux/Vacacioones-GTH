/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.mavenspring.controller;


import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import pe.edu.upeu.mavenspring.dao.UsuarioDAO;
import pe.edu.upeu.mavenspring.model.UsuarioDTO;

/**
 *
 * @author UPEU
 */
@Controller
public class HomeController {

//        //Instannciamiento de metodos Dao
    
	@Autowired
        private UsuarioDAO dao;
////        
//        @Autowired
//	private VentaDAO ve;
//	
//        @Autowired
//        private ClienteDAO cda;
//        
//        @Autowired
//        private ProductoDAO pda;
//        
//        @Autowired
//        private RolDAO rda;
//        
//        @Autowired
//        private DetalleDAO ddao;
//        
//        // Fin------------------
//        
////        
            @RequestMapping(value = "/")
            public String listar() {
                return "index";
            }
////
//
//        //listar ventas
//	@RequestMapping(value="/vende")
//	public ModelAndView VentaLista(ModelAndView model) throws IOException{
//        List<Map<String, Object>> venta = ve.VentaMap();
//       // List<VentasDTO> venta = ve.readAll();
//		model.addObject("ven", venta);
//		model.setViewName("Ventas");
//		return model;
//	}
//      
//        //lista usuario
//        @RequestMapping(value="/usuario")
//	public ModelAndView listContact(ModelAndView model) throws IOException{
//	List<Map<String, Object>> listContact = dao.ListarUsuarioPruba1();
//        //List<UsuarioDTO> listContact = dao.readAll();
//		model.addObject("listContact", listContact);
//		model.setViewName("home");
//		
//		return model;
//	}
////        
////        permite el logueo 
        @RequestMapping(value = "/loguea" ,  method = RequestMethod.POST)
        public ModelAndView Logueo(ModelAndView model ,HttpServletRequest resquest, HttpServletResponse response){
            String user = resquest.getParameter("user");
            String Pass = resquest.getParameter("pass");
            HttpSession sesion = resquest.getSession();
            UsuarioDTO d =dao.Validar(user, Pass);
             if (d != null ) {
                 resquest.getSession().setAttribute("Persona", d);
                 
                 model.setViewName("home");
             }else{
                 sesion.setAttribute("Persona", null);
                model.setViewName("index");

             }
        return model;
         }
//        //salir
        @RequestMapping(value = "/cerrar")
        public ModelAndView ListaRol(ModelAndView model, HttpServletRequest resquest) throws IOException {
            HttpSession sesion = resquest.getSession();
            sesion.setAttribute("Persona", null);
            model.setViewName("index");
            return model;
        }
//        
//        //listar Cliente
//        @RequestMapping(value = "/cliente")
//        public ModelAndView ListaCliente(ModelAndView model) throws IOException {
//                List<ClienteDTO> cliente = cda.readAll();
//                model.addObject("cliente", cliente);
//                model.setViewName("Cliente");
//
//                return model;
//        }
//        
//        //listar Producto
//        @RequestMapping(value = "/Producto")
//        public ModelAndView ListaProducto(ModelAndView model) throws IOException {
//            List<ProductoDTO> producto = pda.readAll();
//            model.addObject("prod", producto);
//            model.setViewName("Producto");
//
//            return model;
//        }
//        
//        //listar Rol
//        @RequestMapping(value = "/Rol")
//        public ModelAndView ListaRol(ModelAndView model) throws IOException {
//            List<RolDTO> rol = rda.readAll();
//            model.addObject("rol", rol);
//            model.setViewName("Rol");
//
//            return model;
//        }
//        
//        //listar Detalle
//        @RequestMapping(value = "/Detalle" , method = RequestMethod.GET)
//        public ModelAndView ListaDetalle (ModelAndView model ,HttpServletRequest request) throws IOException {
//            int id = Integer.parseInt(request.getParameter("id"));
//            List<Map<String, Object>> lista2 = new ArrayList<>();
//            List<Map<String, Object>> lista3 = new ArrayList<>();
//            lista2 = ddao.ListarDetalleID(id);
//            lista3 = ve.ListarClienteVenta(id);
//            model.addObject("lista", lista2);
//            model.addObject("lista2", lista3);
//            model.setViewName("Detalle");
//            return model;
//        }
        
        //---------------------------------------
//	
//	@RequestMapping(value = "/newContact", method = RequestMethod.GET)
//	public ModelAndView newContact(ModelAndView model) {
//		Contact newContact = new Contact();
//		model.addObject("contact", newContact);
//		model.setViewName("ContactForm");
//		return model;
//	}
//	
//	@RequestMapping(value = "/saveContact", method = RequestMethod.POST)
//	public ModelAndView saveContact(@ModelAttribute Contact contact) {
//		contactDAO.saveOrUpdate(contact);		
//		return new ModelAndView("redirect:/");
//	}
//	
//	@RequestMapping(value = "/deleteContact", method = RequestMethod.GET)
//	public ModelAndView deleteContact(HttpServletRequest request) {
//		int contactId = Integer.parseInt(request.getParameter("id"));
//		contactDAO.delete(contactId);
//		return new ModelAndView("redirect:/");
//	}
//	
//	@RequestMapping(value = "/editContact", method = RequestMethod.GET)
//	public ModelAndView editContact(HttpServletRequest request) {
//		int contactId = Integer.parseInt(request.getParameter("id"));
//		Contact contact = contactDAO.get(contactId);
//		ModelAndView model = new ModelAndView("ContactForm");
//		model.addObject("contact", contact);
//		
//		return model;
//	}
}

