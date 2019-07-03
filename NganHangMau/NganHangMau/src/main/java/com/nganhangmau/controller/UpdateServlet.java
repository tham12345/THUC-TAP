package com.nganhangmau.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String plm_id = request.getParameter("idplm");
        String plm_so = request.getParameter("splm");
        String so_nhap_kho = request.getParameter("snk");
        String mau_ma = request.getParameter("mm");
        String mau_ten = request.getParameter("tm");
        String plm_trangthai = request.getParameter("tt");
        String plm_noiyeucau = request.getParameter("nyc");
        String nv_ma_lap = request.getParameter("nglap");
        String nv_ma_linh = request.getParameter("nglinh");
        String plm_ngaylap = request.getParameter("nl");
        String plm_ngaynhan = request.getParameter("ngaynhan");
        String plm_ghichu = request.getParameter("gc");
        String plm_soluong = request.getParameter("sl");
        String plm_dongia = request.getParameter("dg");
        
        Phieulinhmau plm = new Phieulinhmau(plm_id, plm_so, so_nhap_kho, plm_trangthai, plm_noiyeucau, nv_ma_lap, nv_ma_linh, plm_ngaylap, plm_ngaynhan, plm_ghichu);
        PhieulinhmauDAO plmdao = new PhieulinhmauDAO();
        try {
            if (plmdao.edit(plm)) {
                response.sendRedirect("lplm.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
