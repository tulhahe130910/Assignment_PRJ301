/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDBContext;
import dal.OrderDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Cart;
import model.Order;

/**
 *
 * @author david
 */
public class PayController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PayController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PayController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("id");
        if(id_raw != null){
            int id = Integer.parseInt(id_raw);
            AccountDBContext accountdb = new AccountDBContext();
            Account a = accountdb.GetAccountById(id);
            List<Account> list = new ArrayList<>();
            list.add(a);
            request.setAttribute("list", list);
        }
        request.getRequestDispatcher("view/Pay.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String note = request.getParameter("note");
        HttpSession session = request.getSession();
        Map<Integer,Cart> carts = (Map<Integer,Cart>) session.getAttribute("carts");
        if(carts != null){
            float total = 0;
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer key = entry.getKey();
                Cart valuecart = entry.getValue();
                total += valuecart.getProduct().getPrice() * valuecart.getQuantity();
            }
            OrderDBContext orderdb = new OrderDBContext();
            Order o = new Order(name, phone, address, note, "0", total);
            int orderid = orderdb.CreateOrderAndReturnId(o);
            orderdb.SaveOrderDetail(orderid, carts);
            session.removeAttribute("carts");
            session.removeAttribute("total");
            response.sendRedirect("home");
        }
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
