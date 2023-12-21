/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
@WebServlet(name = "checkoutbuy", urlPatterns = {"/checkoutbuy"})
public class checkoutbuy extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession(true);
            int id = (Integer) session.getAttribute("userid");
            float totbuyprice = Float.parseFloat(request.getParameter("totbuyprice"));
            String driver = "com.mysql.jdbc.Driver";
            String dbname = "farm";
            String url = "jdbc:mysql://localhost/"+dbname + "?";
            String username = "root";
            String dbpassword = "";
            String query = "SELECT * FROM buycart WHERE user_id = ?";
            String query2 = "INSERT INTO purchasedbuycart (user_id,img,quantity,itemname,prod_id,price) VALUES (?,?,?,?,?,?)";
            String query3 = "DELETE FROM buycart WHERE user_id = ?";
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, dbpassword);
            PreparedStatement ps = con.prepareStatement(query);
            PreparedStatement ps2 = con.prepareStatement(query2);
            PreparedStatement ps3 = con.prepareStatement(query3);
            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                final String img = rs.getString("img");
                final int quantity = rs.getInt("quantity");
                final String itemname = rs.getString("itemname");
                final String prod_id = rs.getString("prod_id");
                final float price = rs.getFloat("price");
                
                ps2.setInt(1, id);
                ps2.setString(2, img);
                ps2.setInt(3, quantity);
                ps2.setString(4, itemname);
                ps2.setString(5, prod_id);
                ps2.setFloat(6, price);
                ps2.executeUpdate();
            }
            
            ps3.setInt(1, id);
            ps3.executeUpdate();
            
            RequestDispatcher rd = request.getRequestDispatcher("profile");
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
        } catch (SQLException ex) {
            Logger.getLogger(checkoutbuy.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(checkoutbuy.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (SQLException ex) {
            Logger.getLogger(checkoutbuy.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(checkoutbuy.class.getName()).log(Level.SEVERE, null, ex);
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
