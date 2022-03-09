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
import model.Size;

/**
 *
 * @author david
 */
public class SizeDBContext extends DBContext{
    public List<Size> GetAllSize(){
           String sql = "Select * from [Size]";
           List<Size> list = new ArrayList<>();
           try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Size(rs.getInt("product_id"), rs.getString("size_name")));
            }
        } catch (SQLException e) {
        }
        return list;
       }
    
    public static void main(String[] args) {
        SizeDBContext sizedb = new SizeDBContext();
        List<Size> size = sizedb.GetAllSize();
        System.out.println(size.get(0).getName());
    }   
}
