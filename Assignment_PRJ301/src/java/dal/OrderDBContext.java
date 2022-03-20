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
import java.util.Map;
import model.Cart;
import model.Order;

/**
 *
 * @author david
 */
public class OrderDBContext extends DBContext {

    public int CreateOrderAndReturnId(Order order) {
        try {

            String sql = "INSERT INTO [Order]\n"
                    + "           ([fullname]\n"
                    + "           ,[phone_number]\n"
                    + "           ,[address]\n"
                    + "           ,[note]\n"
                    + "           ,[status]\n"
                    + "           ,[total_money]\n"
                    + "           ,[Date])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,GETDATE())";
            PreparedStatement st = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
            st.setString(1, order.getName());
            st.setString(2, order.getPhone());
            st.setString(3, order.getAddress());
            st.setString(4, order.getNote());
            st.setString(5, order.getStatus());
            st.setFloat(6, order.getTotalmoney());
            st.executeUpdate();
            ResultSet rs = st.getGeneratedKeys(); // trả về id sau khi insert xong
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void SaveOrderDetail(int orderid, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO [dbo].[Order_Details]\n"
                    + "           ([order_id]\n"
                    + "           ,[product_id]\n"
                    + "           ,[price]\n"
                    + "           ,[num]\n"
                    + "           ,[total_money])\n"
                    + "     VALUES (?,?,?,?,?)";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, orderid);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer ProductId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(2, cart.getProduct().getId());
                ps.setFloat(3, cart.getProduct().getPrice());
                ps.setInt(4, cart.getQuantity());
                ps.setFloat(5, cart.getQuantity() * cart.getProduct().getPrice());
                ps.executeUpdate();
            }
        } catch (Exception e) {
        }
    }

    public List<Order> GetOrder() {
        String sql = "Select * From [Order]";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt("id"), rs.getString("fullname"), rs.getString("phone_number"), rs.getString("address"),
                        rs.getString("note"), rs.getString("status"), rs.getFloat("total_money"), rs.getDate("Date"));
                list.add(o);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public Order GetOrderById(int id) {
        String sql = "select * from [Order] where ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt("id"), rs.getString("fullname"), rs.getString("phone_number"), rs.getString("address"),
                        rs.getString("note"), rs.getString("status"), rs.getFloat("total_money"), rs.getDate("Date"));
                return o;
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void UpdateSetStatus(String status, int id) {
        String sql = "UPDATE [Order]\n"
                + "   SET [status] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (Exception ex) {
        }
    }

    public List<Order> getAllOrderByStatus(String status) {
        String sql = "Select * From [Order] WHERE status = ?";
        List<Order> list = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, status);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order o = new Order(rs.getInt("id"), rs.getString("fullname"), rs.getString("phone_number"), rs.getString("address"),
                        rs.getString("note"), rs.getString("status"), rs.getFloat("total_money"), rs.getDate("Date"));
                list.add(o);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public static void main(String[] args) {
        OrderDBContext db = new OrderDBContext();
        System.out.println(db.GetOrder().get(0).getName());
    }



}
