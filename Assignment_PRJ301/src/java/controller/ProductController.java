/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDBContext;
import dal.ProductDBContext;
import dal.SizeDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;
import model.Size;

/**
 *
 * @author david
 */
public class ProductController extends HttpServlet {

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
            out.println("<title>Servlet ProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductController at " + request.getContextPath() + "</h1>");
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
        CategoryDBContext categorydb = new CategoryDBContext();
        SizeDBContext sizedb = new SizeDBContext();
        ProductDBContext productdb = new ProductDBContext();
        List<Category> listCate = categorydb.GetAllCategory();
        List<Size> listSize = sizedb.GetAllSize();
        List<Product> listProduct = productdb.GetProduct();
        
        //get all product + paging
        int numPs, numperPage, numpage, start, end, page;
        numPs = listProduct.size();
        numperPage = 9;
        numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
        String tpage = request.getParameter("page");
        try {
            page = Integer.parseInt(tpage);
        } catch (NumberFormatException e) {
            page = 1;
        }
        start = (page - 1) * numperPage;
        if (page * numperPage > numPs) {
            end = numPs;
        } else {
            end = page * numperPage;
        }
        List<Product> listproduct1 = productdb.getListByPage(listProduct, start, end);

        request.setAttribute("num", numpage);
        request.setAttribute("page", page);
        request.setAttribute("listProduct", listproduct1);
        
        // tab filter
        String cid_raw = request.getParameter("cid");
        if (cid_raw != null) {
            int id = Integer.parseInt(cid_raw);
            List<Product> listTab = productdb.GetListTabProduct(id);
            numPs = listTab.size();
            numperPage = 9;
            numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            tpage = request.getParameter("page");
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            listproduct1 = productdb.getListByPage(listTab, start, end);

            request.setAttribute("num", numpage);
            request.setAttribute("page", page);
            request.setAttribute("listProduct", listproduct1);
        }
        
        // Search
        String search = request.getParameter("search");
        if (search != null) {
            search = search.trim();
            List<Product> listSearch = productdb.SearchProductByName(search);
            numPs = listSearch.size();
            numperPage = 9;
            numpage = numPs / numperPage + (numPs % numperPage == 0 ? 0 : 1);
            tpage = request.getParameter("page");
            try {
                page = Integer.parseInt(tpage);
            } catch (NumberFormatException e) {
                page = 1;
            }
            start = (page - 1) * numperPage;
            if (page * numperPage > numPs) {
                end = numPs;
            } else {
                end = page * numperPage;
            }
            listproduct1 = productdb.getListByPage(listSearch, start, end);
            request.setAttribute("num", numpage);
            request.setAttribute("page", page);
            request.setAttribute("listProduct", listproduct1);
        }
        
        
        request.setAttribute("listCate", listCate);
        request.setAttribute("listSize", listSize);
        request.getRequestDispatcher("view/Product.jsp").forward(request, response);

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
