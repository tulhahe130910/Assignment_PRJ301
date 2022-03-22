/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import dal.AccountDBContext;
import dal.CategoryDBContext;
import dal.OrderDBContext;
import dal.ProductDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Category;
import model.Order;
import model.Product;
import model.Profit;

/**
 *
 * @author david
 */
public class AdminController extends HttpServlet {

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
            out.println("<title>Servlet AdminController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminController at " + request.getContextPath() + "</h1>");
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
//        HttpSession session = request.getSession(true);
//        Account a = (Account) session.getAttribute("admin");
//        if (a == null){
//            PrintWriter out = response.getWriter();
//            out.println("Access denied");
//        }else{
        List<Category> listCate = new CategoryDBContext().GetAllCategory();
        request.setAttribute("listCate", listCate);
        List<Integer> listCountCate = new ArrayList<>();
        for (int i = 1; i <= listCate.size(); i++) {
            int n = new CategoryDBContext().CountCategory(i);
            listCountCate.add(n);
        }
        //total order
        int total_order = new OrderDBContext().getTotalOrder();
        request.setAttribute("total_order", total_order);

        //total user
        int total_user = new AccountDBContext().getTotalUser();
        request.setAttribute("total_user", total_user);

        //total profit
        int total_profit = new OrderDBContext().getTotalProfit();
        request.setAttribute("total_profit", total_profit);

        //total product
        int total_product = new ProductDBContext().getTotalProduct();
        request.setAttribute("total_product", total_product);

        //top 4 price product
        List<Product> list4product = new ProductDBContext().Top4ProductPrice();
        request.setAttribute("top4product", list4product);

        //profit week daily
        List<Profit> listprofitweek = new OrderDBContext().Get7daysProfit();
        request.setAttribute("listprofitweek", listprofitweek);

        //recent order
        OrderDBContext orderdb = new OrderDBContext();
        List<Order> listorder = orderdb.GetOrder();
        request.setAttribute("listorder", listorder);

        request.setAttribute("listcount", listCountCate);
        request.getRequestDispatcher("Admin/HomeAdmin.jsp").forward(request, response);
    }
    //}

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
        processRequest(request, response);
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
