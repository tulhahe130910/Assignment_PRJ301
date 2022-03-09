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
import model.Category;
import model.Product;
import model.Size;

/**
 *
 * @author david
 */
public class ProductDBContext extends DBContext {

    public List<Product> GetProduct() {
        String sql = "  Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id)";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getFloat("product_price"),
                        rs.getInt("product_quantity"), rs.getString("product_image"), c);
                list.add(p);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    
    public List<Product> getListByPage(List<Product> list, int start, int end) {
        ArrayList<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public static void main(String[] args) {
        ProductDBContext prodcutdb = new ProductDBContext();
        List<Product> product = prodcutdb.GetProduct();
        System.out.println(product.get(0).getName());
    }
}
