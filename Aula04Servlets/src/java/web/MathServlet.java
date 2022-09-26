/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ghost
 */
@WebServlet(name = "MathServlet", urlPatterns = {"/math.html"})
public class MathServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>MathServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h4><a href='index.html'>Voltar</a></h4>");
            out.println("<h1>Servlet MathServlet at " + request.getContextPath() + "</h1>");
            
            
            double n1 = 2.0, n2 = 2.0;
            String result="nada";
            try{
                result = request.getParameter("operation");
                n1 = Double.parseDouble(request.getParameter("n1"));
                n2 = Double.parseDouble(request.getParameter("n2"));
            }
            catch(Exception ex){
                out.println("<div style='color:red'> "
                        + "Parâmtro inválido"
                        + "</div>");
            }
            out.println(" <form" +
                    " <input type='number' step='0.1' name='n1' value=''/>\n" +
                    " <input type='number' step='0.1' name='n1' value='"+n1+"'/>\n" +
                    "<input type='number' step='0.1' name='n2' value='"+n2+"'/>\n" +
                        "<br>" +
                    "<input type='radio' name='operation' value='adic' checked> " +
                    "<label for='math'>Adição</label>" +
                    "<input type='radio' name='operation' value='sub'>" +
                    "<label for='math'>Subitração</label>" +
                    "<input type='radio' name='operation' value='mult'>" +
                    "<label for='math'>Multiplicação</label>" +
                    "<input type='radio' name='operation' value='div'>" +
                    "<label for='math'>Divisão</label>" +
                        "<br>" +
                    "<input type='submit' name='somar' value='Calcular'/>" +
            "    </form>");
            
            if(result.equals("adic")){
                out.println("<h2>" +n1+ " + " +n2+" = " + (n1+n2) + "</h2>");
            }else if(result.equals("sub")){
                out.println("<h2>" +n1+ " - " +n2+" = " + (n1-n2) + "</h2>");
            }else if(result.equals("mult")){
                out.println("<h2>" +n1+ " x " +n2+" = " + (n1*n2) + "</h2>");
            }else {
                out.println("<h2>" +n1+ " / " +n2+" = " + (n1/n2) + "</h2>");
            }             
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
        processRequest(request, response);
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
