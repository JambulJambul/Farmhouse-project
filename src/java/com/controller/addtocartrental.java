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
@WebServlet(name = "addtocartrental", urlPatterns = {"/addtocartrental"})
public class addtocartrental extends HttpServlet {

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
            HttpSession session = request.getSession();
            int userid = (Integer) session.getAttribute("userid");
            String prodid = request.getParameter("prodid");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int duration = Integer.parseInt(request.getParameter("duration"));
            String itemimg = request.getParameter("itemimg");
            String itemname = request.getParameter("itemname");
            float itemprice = Float.parseFloat(request.getParameter("itemprice"));
            
            String driver = "com.mysql.jdbc.Driver";
            String dbname = "farm";
            String url = "jdbc:mysql://localhost/"+dbname + "?";
            String username = "root";
            String dbpassword = "";
            String query = "INSERT INTO rentalcart(user_id,price,quantity,duration,itemname,img,prod_id) VALUES(?,?,?,?,?,?,?)";
            String query2 = "SELECT * FROM rentalcart WHERE user_id = ? AND prod_id = ?";
            String query3 = "UPDATE rentalcart SET quantity = quantity + ? WHERE user_id = ? AND prod_id = ?";
            String query4 = "UPDATE rentalcart SET duration = ? WHERE user_id = ? AND prod_id = ?";
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, dbpassword);
            PreparedStatement ps = con.prepareStatement(query);
            PreparedStatement ps2 = con.prepareStatement(query2);
            PreparedStatement ps3 = con.prepareStatement(query3);
            PreparedStatement ps4 = con.prepareStatement(query4);
            
            ps2.setInt(1, userid);
            ps2.setString(2, prodid);
            ResultSet rs=ps2.executeQuery();
            if (rs.next()){
                ps3.setInt(1, quantity);
                ps3.setInt(2, userid);
                ps3.setString(3, prodid);
                ps3.executeUpdate();
                
                ps4.setInt(1, duration);
                ps4.setInt(2, userid);
                ps4.setString(3, prodid);
                ps4.executeUpdate();
            }
            else {
            ps.setInt(1, userid);
            ps.setFloat(2, itemprice);
            ps.setInt(3, quantity);
            ps.setInt(4, duration);
            ps.setString(5, itemname);
            ps.setString(6, itemimg);
            ps.setString(7, prodid);
            ps.executeUpdate();
            }
            
            ps.close();
            ps2.close();
            ps3.close();
            con.close();
            
            RequestDispatcher rd = request.getRequestDispatcher("cart");
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
            Logger.getLogger(addtocartrental.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addtocartrental.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(addtocartrental.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addtocartrental.class.getName()).log(Level.SEVERE, null, ex);
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
