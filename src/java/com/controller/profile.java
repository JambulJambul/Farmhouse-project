/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import bean.Purchasedbuycart;
import bean.Purchasedrentalcart;
import bean.Userbean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(name = "profile", urlPatterns = {"/profile"})
public class profile extends HttpServlet {

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
        String driver ="com.mysql.jdbc.Driver";
        String dbName ="farm";
        String url ="jdbc:mysql://localhost/" + dbName + "?";
        String userName ="root";
        String password ="";
        String query ="SELECT * FROM users WHERE user_id = ?";
        String query2 ="SELECT * FROM purchasedbuycart WHERE user_id = ?";
        String query3 ="SELECT * FROM purchasedrentcart WHERE user_id = ?";

        Class.forName(driver);
        
        HttpSession session = request.getSession();
        int id = (Integer) session.getAttribute("userid");

        Connection con = DriverManager.getConnection(url,userName,password);
        PreparedStatement ps = con.prepareStatement(query);     
        PreparedStatement ps2 = con.prepareStatement(query2); 
        PreparedStatement ps3 = con.prepareStatement(query3); 
        
        ps.setInt(1, id);       
        ResultSet rs = ps.executeQuery();
        
            Userbean myprofile = new Userbean();
            
            while (rs.next()) {
                myprofile.setId(rs.getInt("user_id"));
                myprofile.setName(rs.getString("name"));
                myprofile.setPhone(rs.getString("phone"));
                myprofile.setAddress(rs.getString("address"));
            }
            
            session.setAttribute("myprofile", myprofile);
            
            ps2.setInt(1, id);
            ResultSet rs2 = ps2.executeQuery();
            ArrayList purbuylist = new ArrayList();
            Purchasedbuycart purbuy = new Purchasedbuycart();
            while (rs2.next()) {
                purbuy.setItem_id(rs2.getInt("item_id"));
                purbuy.setUser_id(rs2.getInt("user_id"));
                purbuy.setQuantity(rs2.getInt("quantity"));
                purbuy.setImg(rs2.getString("img"));
                purbuy.setItemname(rs2.getString("itemname"));
                purbuy.setProd_id(rs2.getString("prod_id"));
                purbuy.setPrice(rs2.getFloat("price"));
                
                purbuylist.add(purbuy);
                purbuy = new Purchasedbuycart();
            }
            
            session.setAttribute("purbuylist", purbuylist);
            
            ps3.setInt(1, id);
            ResultSet rs3 = ps3.executeQuery();
            ArrayList purrenlist = new ArrayList();
            Purchasedrentalcart renbuy = new Purchasedrentalcart();
            while (rs3.next()) {
                renbuy.setItem_id(rs3.getInt("item_id"));
                renbuy.setUser_id(rs3.getInt("user_id"));
                renbuy.setQuantity(rs3.getInt("quantity"));
                renbuy.setDuration(rs3.getInt("duration"));
                renbuy.setImg(rs3.getString("img"));
                renbuy.setItemname(rs3.getString("itemname"));
                renbuy.setProd_id(rs3.getString("prod_id"));
                renbuy.setPrice(rs3.getFloat("price"));
                
                purrenlist.add(renbuy);
                renbuy = new Purchasedrentalcart();
            }
            
            session.setAttribute("purrenlist", purrenlist);
            
            ps.close();
            con.close();
            
            RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
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
            Logger.getLogger(profile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(profile.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(profile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(profile.class.getName()).log(Level.SEVERE, null, ex);
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
