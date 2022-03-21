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
    
    public int CountCategory(int id) {
        String sql = "Select count(*) as 'countcate' from Product where category_id=?";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                n = rs.getInt("countcate");
                return n;
            }
        } catch (SQLException e) {
        }
        return n;
    }
    
    public Category GetCategoryById(int id) {
        String sql = "Select * From Category WHERE category_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category();
                c.setId(rs.getInt("category_id"));
                c.setName(rs.getString("category_name"));
                return c;
            }
        } catch (SQLException e) {
        }
        return null;
    }
    
    public void AddCategory(Category c) {
        String sql = "INSERT INTO [Category] ([category_name]) VALUES (?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public void UpdateCategory(Category c) {
        String sql = "Update Category set category_name =? WHERE category_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, c.getName());
            st.setInt(2, c.getId());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public void DeleteCategory(int id) {
        String sql = "Delete From Category WHERE category_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    
    public static void main(String[] args) {
        CategoryDBContext catedb = new CategoryDBContext();
        List<Category> category = catedb.GetAllCategory();
        System.out.println(category.get(0).getName());
    }   
    
}
