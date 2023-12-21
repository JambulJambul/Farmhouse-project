/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import bean.Buycartbean;
import bean.Machinesbean;
import bean.Rentalcartbean;
import bean.Toolsbean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hilma
 */
@WebServlet(name = "cart", urlPatterns = {"/cart"})
public class cart extends HttpServlet {

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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession session = request.getSession(true);
            int id = (Integer) session.getAttribute("userid");
            
        String driver = "com.mysql.jdbc.Driver";
            String dbname = "farm";
            String url = "jdbc:mysql://localhost/"+dbname + "?";
            String username = "root";
            String dbpassword = "";
            String query = "SELECT * FROM buycart WHERE user_id = ?";
            String query2 = "SELECT * FROM rentalcart WHERE user_id = ?";
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, dbpassword);
            PreparedStatement ps = con.prepareStatement(query);
            PreparedStatement ps2 = con.prepareStatement(query2);
            
            
            float totbuyprice = 0;
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            ArrayList buylist = new ArrayList();
            
            while (rs.next()) {
                Buycartbean buy = new Buycartbean();
                buy.setItem_id(rs.getInt("item_id"));
                buy.setUser_id(rs.getInt("user_id"));
                buy.setQuantity(rs.getInt("quantity"));
                buy.setImg(rs.getString("img"));
                buy.setItemname(rs.getString("itemname"));
                buy.setProd_id(rs.getString("prod_id"));
                buy.setPrice(rs.getFloat("price"));
                
                totbuyprice += rs.getFloat("price")*rs.getInt("quantity");
                buylist.add(buy);
                buy = new Buycartbean();
            }
            
            session.setAttribute("buylist", buylist);
            
            float totrentprice = 0;
            ps2.setInt(1, id);
            ResultSet rs2 = ps2.executeQuery();
            ArrayList rentlist = new ArrayList();
            
            while (rs2.next()) {
                Rentalcartbean rent = new Rentalcartbean();
                rent.setItem_id(rs2.getInt("item_id"));
                rent.setUser_id(rs2.getInt("user_id"));
                rent.setQuantity(rs2.getInt("quantity"));
                rent.setDuration(rs2.getInt("duration"));
                rent.setImg(rs2.getString("img"));
                rent.setItemname(rs2.getString("itemname"));
                rent.setProd_id(rs2.getString("prod_id"));
                rent.setPrice(rs2.getFloat("price"));

                totrentprice += rs2.getFloat("price")*rs2.getInt("duration")*rs2.getInt("quantity");
                rentlist.add(rent);
                rent = new Rentalcartbean();
            }
            
            session.setAttribute("rentlist", rentlist);
            
            ps.close();
            ps2.close();
            con.close();
            
            float totprice = totbuyprice+totrentprice;
            
            RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
            request.setAttribute("totbuyprice", totbuyprice);
            request.setAttribute("totrentprice", totrentprice);
            request.setAttribute("totprice", totprice);
                    rd.include(request, response);
        
        
        
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(cart.class.getName()).log(Level.SEVERE, null, ex);
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
