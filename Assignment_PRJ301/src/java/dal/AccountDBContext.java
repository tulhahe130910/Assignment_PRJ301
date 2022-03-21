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
public class AccountDBContext extends DBContext {

    public Account getAccount(String username, String password) {
        try {
            String sql = "SELECT account_name,account_password FROM Account WHERE account_name = ? AND account_password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
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

    public Account GetAccountById(int id) {
        String sql = "Select * From Account WHERE account_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
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
                return a;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void SignUp(Account a) {
        String sql = "INSERT INTO [Account]\n"
                + "           ([account_email]\n"
                + "           ,[account_password]\n"
                + "           ,[account_name] \n"
                + "           ,[account_phone] \n"
                + "           ,[account_address] \n"
                + "           ,[account_role])\n"
                + "     VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getEmail());
            st.setString(2, a.getPassword());
            st.setString(3, a.getUsername());
            st.setString(4, a.getPhone());
            st.setString(5, a.getAddress());
            st.setBoolean(6, a.isRole());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void AddAccount(Account a) {
        String sql = "INSERT INTO [Account] ([account_id],[account_name],[account_password],[account_email],[account_phone],[account_address],[account_role]) \n"
                + "VALUES (?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, a.getId());
            st.setString(2, a.getUsername());
            st.setString(3, a.getPassword());
            st.setString(4, a.getEmail());
            st.setString(5, a.getPhone());
            st.setString(6, a.getAddress());
            st.setBoolean(7, a.isRole());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void UpdateAccount(Account a) {
        String sql = "Update Account set account_name =?, account_password=?, account_email=?, account_phone=?,account_address=?, "
                + "account_role=? WHERE account_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            st.setString(2, a.getPassword());
            st.setString(3, a.getEmail());
            st.setString(4, a.getPhone());
            st.setString(5, a.getAddress());
            st.setBoolean(6, a.isRole());
            st.setInt(7, a.getId());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void DeleteAccount(int id) {
        String sql = "Delete From Account WHERE account_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public Account GetAccountProfile() {
        String sql = "Select account_name, account_password, account_email, account_phone, account_address From Account";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account();
                a.setUsername(rs.getString("account_name"));
                a.setPassword(rs.getString("account_password"));
                a.setEmail(rs.getString("account_email"));
                a.setPhone(rs.getString("account_phone"));
                a.setAddress(rs.getString("account_address"));
                return a;
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public void UpdateProfile(Account a) {
        String sql = "Update Account set account_name =?, account_password=?, account_email=?, account_phone=?,account_address=? "
                + " WHERE account_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getUsername());
            st.setString(2, a.getPassword());
            st.setString(3, a.getEmail());
            st.setString(4, a.getPhone());
            st.setString(5, a.getAddress());
            st.setInt(6, a.getId());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public Account check(String username, String password) {
        String sql = "select * from Account where account_name = ? and account_password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt("account_id"),rs.getString("account_email"), password, username, rs.getString("account_phone"),
                        rs.getString("account_address"),rs.getBoolean("account_role"));
                return a;
            }
        } catch (Exception e) {
        }
        return null;
    }

}
