/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.fecharConexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Admin;

/**
 *
 * @author leonardo
 */
public class AdminDAO {
    
    public static List<Admin> obterAdmins() throws ClassNotFoundException, SQLException{
        
        Connection conexao =null;
        Statement comando = null;
        List<Admin> admins = new ArrayList<Admin>();
        Admin admin = null;
        
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            ResultSet rs = comando.executeQuery("select * from admin");
            
            while (rs.next()){
                admin = instaciarAdmin(rs);
                admins.add(admin);
            }
            }finally{
                    fecharConexao(conexao, comando);
                    
                    }
            return admins;
        }

    private static Admin instaciarAdmin(ResultSet rs) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
          