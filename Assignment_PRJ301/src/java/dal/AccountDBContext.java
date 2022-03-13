/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author david
 */
public class AccountDBContext extends DBContext{
    public Account getAccount(String username, String password)
    {
        try {
            String sql = "SELECT account_name,account_password FROM Account WHERE account_name = ? AND account_password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1,username);
            stm.setString(2,password);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                Account account = new Account();
                account.setUsername(rs.getString("account_name"));
                account.setPassword(rs.getString("account_password"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public List<Account> GetListAccount() {
        String sql = "Select * From Account";
        List<Account> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setId(rs.getInt("account_id"));
                a.setUsername(rs.getString("account_name"));
                a.setPassword(rs.getString("account_password"));
                a.setEmail(rs.getString("account_email"));
                a.setPhone(rs.getString("account_phone"));
                a.setAddress(rs.getString("account_address"));
                a.setRole(rs.getBoolean("account_role"));
                list.add(a);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    
    
    public int checkRole(String username, String url)
    {
        try {
            String sql = "SELECT COUNT(*) as Total \n" +
                "	FROM Account a INNER JOIN Account_Group ag ON a.username = ag.username\n" +
                "					INNER JOIN [Group] g ON ag.gid = g.gid\n" +
                "					INNER JOIN Group_Feature gf ON gf.gid = g.gid\n" +
                "					INNER JOIN Feature f ON f.fid = gf.fid\n" +
                "	WHERE a.username = ? AND f.url = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1,username);
            stm.setString(2, url);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                return rs.getInt("Total");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
}
