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
@WebServlet(name = "ProcesaContacto", urlPatterns = {"/ProcesaContacto"})
public class ProcesaContacto extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo");
        String mensaje = request.getParameter("mensaje");
        boolean copia = Boolean.parseBoolean(request.getParameter("copia"));
        
        Contacto contacto = new Contacto();
        contacto.setNombre(nombre);
        contacto.setCorreo(correo);
        contacto.setMensaje(mensaje);
        contacto.setCopia(copia);
        
        request.setAttribute("contacto", contacto);
        
        request.getRequestDispatcher("SalidaContacto.jsp").forward(request, response);
    }

}
