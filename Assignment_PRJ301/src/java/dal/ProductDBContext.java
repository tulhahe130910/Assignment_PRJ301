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

    public List<Product> GetListTabProduct(int id) {
        String sql = " Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) Where p.category_id = ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
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

    public void DeleteProduct(int id) {
        String sql = "Delete From Product WHERE Product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public Product GetProductById(int id) {
        String sql = "  Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) WHERE p.Product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("category_id"), rs.getString("category_name"));
                Product p = new Product(rs.getInt("product_id"), rs.getString("product_name"), rs.getFloat("product_price"),
                        rs.getInt("product_quantity"), rs.getString("product_image"), c);
                return p;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void AddProduct(Product p) {
        String sql = "INSERT INTO [Product]\n"
                + "           ([Product_name]\n"
                + "           ,[Product_price]\n"
                + "           ,[Product_quantity]\n"
                + "           ,[Product_image]\n"
                + "           ,[category_id])\n"
                + "     VALUES (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getName());
            st.setFloat(2, p.getPrice());
            st.setInt(3, p.getQuantity());
            st.setString(4, p.getImage());
            st.setInt(5, p.getCategory().getId());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void UpdateProduct(Product p) {
        String sql = "Update Product set Product_name =?, Product_price=?, Product_quantity=?,Product_image=?,category_id=? WHERE Product_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getName());
            st.setFloat(2, p.getPrice());
            st.setInt(3, p.getQuantity());
            st.setString(4, p.getImage());
            st.setInt(5, p.getCategory().getId());
            st.setInt(6, p.getId());
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Product> SearchProductByName(String key) {
        String sql = "Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) where p.Product_name Like ?";
        List<Product> list = new ArrayList<>();
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + key + "%");
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

    public List<Product> SortProductByPriceAsc() {
        String sql = "Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) order by p.product_price asc";
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

    public List<Product> SortProductByPriceDesc() {
        String sql = "Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) order by p.product_price desc";
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

    public List<Product> SortProductByNameAsc() {
        String sql = "Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) order by p.product_name asc";
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

    public List<Product> SortProductByNameDesc() {
        String sql = "Select p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) order by p.product_name desc";
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

    public int getTotalProduct() {
        String sql = "Select count(*) as 'total' From Product";
        int n = 0;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                n = rs.getInt("total");
                return n;
            }
        } catch (SQLException e) {
        }
        return n;
    }

    public List<Product> Top4ProductPrice() {
        String sql = "Select Top 4 p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) order by p.product_price desc";
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
    public List<Product> Top9ProductPrice() {
        String sql = "Select Top 9 p.product_id, p.product_name, p.product_price, p.product_quantity, p.product_image, p.category_id, c.category_name from [Product] p \n"
                + " inner join Category c on (p.category_id = c.category_id) order by p.product_price desc";
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

    public static void main(String[] args) {
        ProductDBContext prodcutdb = new ProductDBContext();
        List<Product> product = prodcutdb.GetListTabProduct(1);
        for (int i = 0; i < product.size(); i++) {
            System.out.println(product.get(0).getName());
        }
    }

}
