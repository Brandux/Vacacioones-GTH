/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import javax.sql.DataSource;
import pe.edu.upeu.rrhh.config.AppConfig;

/**
 *
 * @author Alfa003
 */
public class Testeo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
                Conex();
        }
    public static void Conex() {
        DataSource as = AppConfig.getDataSource();
        if (as != null) {
            System.out.println("si");
        } else {
            System.out.println("no");
        }

    }
}
