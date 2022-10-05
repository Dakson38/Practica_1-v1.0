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
@WebServlet(name = "ProcesaInscripcionSeminarios", urlPatterns = {"/ProcesaInscripcionSeminarios"})
public class ProcesaInscripcionSeminarios extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fecha = request.getParameter("fecha");
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String turno = request.getParameter("turno");
        String []seminarios = request.getParameterValues("seminario");
        
        InscripcionSeminarios inscripcionSeminario = new InscripcionSeminarios();
        inscripcionSeminario.setFecha(fecha);
        inscripcionSeminario.setNombre(nombre);
        inscripcionSeminario.setApellidos(apellidos);
        inscripcionSeminario.setTurno(turno);
        inscripcionSeminario.setSeminarios(seminarios);
        
        request.setAttribute("inscripcionSeminario", inscripcionSeminario);
        
        request.getRequestDispatcher("SalidaSeminarios.jsp").forward(request, response);
    }
}
