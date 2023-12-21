/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import bean.Machinesbean;
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
@WebServlet(name = "toolsequipment", urlPatterns = {"/toolsequipment"})
public class toolsequipment extends HttpServlet {

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
            String driver = "com.mysql.jdbc.Driver";
            String dbname = "farm";
            String url = "jdbc:mysql://localhost/"+dbname + "?";
            String username = "root";
            String dbpassword = "";
            String query = "SELECT * FROM machines";
            String query2 = "SELECT * FROM tools";
            
            Class.forName(driver);
            Connection con = DriverManager.getConnection(url, username, dbpassword);
            PreparedStatement ps = con.prepareStatement(query);
            PreparedStatement ps2 = con.prepareStatement(query2);
            
            ResultSet rs = ps.executeQuery();
            ArrayList machinelist = new ArrayList();
            
            while (rs.next()) {
                Machinesbean mach = new Machinesbean();
                mach.setId(rs.getInt("machine_id"));
                mach.setMachine_name(rs.getString("machine_name"));
                mach.setModel(rs.getString("model"));
                mach.setMachine_desc(rs.getString("machines_desc"));
                mach.setYear(rs.getString("year"));
                mach.setImg(rs.getString("img"));
                mach.setPrice(rs.getFloat("price"));
                
                machinelist.add(mach);
                mach = new Machinesbean();
            }
            HttpSession session = request.getSession(true);
            session.setAttribute("machinelist", machinelist);
            
            ResultSet rs2 = ps2.executeQuery();
            ArrayList toolslist = new ArrayList();
            
            while (rs2.next()) {
                Toolsbean tools = new Toolsbean();
                tools.setId(rs2.getInt("tools_id"));
                tools.setName(rs2.getString("name"));
                tools.setBrand(rs2.getString("brand"));
                tools.setTools_desc(rs2.getString("tools_desc"));
                tools.setImg(rs2.getString("img"));
                tools.setRent_price(rs2.getFloat("rent_price"));
                tools.setBuy_price(rs2.getFloat("buy_price"));
                
                toolslist.add(tools);
                tools = new Toolsbean();
            }
            ps.close();
            ps2.close();
            con.close();
            session.setAttribute("toolslist", toolslist);
            
            RequestDispatcher rd = request.getRequestDispatcher("/toolsequipment.jsp");
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
            Logger.getLogger(toolsequipment.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(toolsequipment.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(toolsequipment.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(toolsequipment.class.getName()).log(Level.SEVERE, null, ex);
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
