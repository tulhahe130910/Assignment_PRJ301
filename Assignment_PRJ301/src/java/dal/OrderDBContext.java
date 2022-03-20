/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
}
