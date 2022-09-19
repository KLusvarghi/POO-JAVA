/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author Ghost
 */
@WebServlet(name = "TasksServlet", urlPatterns = {"/tasks.json"})
public class TasksServlet extends HttpServlet {
    private static final ArrayList<String> tasks = new ArrayList<>(); // criando uma ArrayList estática e privada chamada 'tasks'

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
        PrintWriter out = response.getWriter();
        try {
            if(request.getParameter("add") != null) { // irá verificar na URL se contem essa palavra
                tasks.add(request.getParameter("add")); // irá remover a string da ArrayList de 'tasks'
            }
            if(request.getParameter("remove") != null) { // irá verificar na URL se contem essa palavra
                tasks.remove(request.getParameter("remove"));
            }
            JSONArray list = new JSONArray(tasks); // instanciando o JSONArray, sendo chamada de 'list' extendendo de 'tasks'
            out.println(list.toString()); // exibindo a ArrayList 'list'
        }catch(Exception ex){
            response.setStatus(500); // 500 é um erro genérico do navegador
            JSONObject err = new JSONObject(); // criando um novo objeto para exibir o erro
            err.put("error", ex.getMessage()); // irá exibir o erro que apresentar no 'Exception'
            out.println(err.toString());
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
