/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package m2i.compethance.employeemaven;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

/**
 *
 * @author Formation
 */
public class ServletData extends HttpServlet {

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
            Session sess = NewHibernateUtil.getSessionFactory().openSession();
          
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletData</title><link href=\"css/cgestyle.css\" rel=\"stylesheet\" type=\"text/css\"/>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletData at " + request.getContextPath() + "</h1>");
            for(int i=1;i>0;i++)
            {
            Client ins = (Client) sess.get(Client.class,new Integer(i));
            if(ins == null) break;
            out.println("<hr/><div class='datarow'>Id : "+ins.getId()+"<br/>");
            out.println("Nom : "+ins.getNom()+"<br/>");
            out.println("Prenom : "+ins.getPrenom()+"<br/><hr/></div>");
            }
            out.println("<hr/><br/>");
            for(Client oc: GestionClient.getAllClients())
            {
                out.println("<hr/><div class='datarow'>Id : "+oc.getId()+"<br/>");
                out.println("Nom : "+oc.getNom()+"<br/>");
                out.println("Prenom : "+oc.getPrenom()+"<br/><hr/></div>");
            }
            out.println("</body>");
            out.println("</html>");
            sess.close();
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
