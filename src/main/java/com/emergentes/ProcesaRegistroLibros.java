package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CJ
 */
@WebServlet(name = "ProcesaRegistroLibros", urlPatterns = {"/ProcesaRegistroLibros"})
public class ProcesaRegistroLibros extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        String resumen = request.getParameter("resumen");
        String medio = request.getParameter("medio");
         
        RegistroLibros registroLibros = new RegistroLibros();
        registroLibros.setTitulo(titulo);
        registroLibros.setAutor(autor);
        registroLibros.setResumen(resumen);
        registroLibros.setMedio(medio);
        
        request.setAttribute("registroLibros", registroLibros);
        
        request.getRequestDispatcher("SalidaLibros.jsp").forward(request, response);
    }

}
