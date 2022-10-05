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
@WebServlet(name = "ProcesaEncuestaOperativo", urlPatterns = {"/ProcesaEncuestaOperativo"})
public class ProcesaEncuestaOperativo extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String []sistemasOperativos = request.getParameterValues("soperativos");
        
        EncuestaOperativo encuestaOperativo = new EncuestaOperativo();
        
        encuestaOperativo.setNombre(nombre);
        encuestaOperativo.setSistemasOperativos(sistemasOperativos);
        
        request.setAttribute("encuestaOperativo", encuestaOperativo);
        
        request.getRequestDispatcher("SalidaOperativo.jsp").forward(request, response);
    }

}
