/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.mavenspring.dao;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import pe.edu.upeu.mavenspring.interfaces.Operaciones;
import pe.edu.upeu.mavenspring.model.DevolucionDTO;

/**
 *
 * @author Brandukosky
 */
public class DevolucionDAO implements Operaciones<DevolucionDTO>{

    private JdbcTemplate jt;

    public DevolucionDAO(DataSource dataSource) {
        jt = new JdbcTemplate(dataSource);
    }
    
    @Override
    public void saveOrUpdate(DevolucionDTO e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public DevolucionDTO read(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<DevolucionDTO> list() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
