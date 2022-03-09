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
import model.Category;
import model.Size;

/**
 *
 * @author david
 */
public class CategoryDBContext extends DBContext{
    
    public List<Category> GetAllCategory() {
        String sql = "select * from [Category]";
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt("category_id"), rs.getString("category_name")));
            }
        } catch (SQLException e) {
        }
        return list;
    }             
    public static void main(String[] args) {
        CategoryDBContext catedb = new CategoryDBContext();
        List<Category> category = catedb.GetAllCategory();
        System.out.println(category.get(0).getName());
    }   
}
