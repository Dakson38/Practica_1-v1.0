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
@WebServlet(name = "ProcesaRegistroUsuario", urlPatterns = {"/ProcesaRegistroUsuario"})
public class ProcesaRegistroUsuario extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");
        
        RegistroUsuario registroUsuario = new RegistroUsuario();
        registroUsuario.setNombre(nombre);
        registroUsuario.setApellidos(apellidos);
        registroUsuario.setCorreo(correo);
        registroUsuario.setPassword(password);
        
        request.setAttribute("registroUsuario", registroUsuario);
        
        request.getRequestDispatcher("SalidaUsuario.jsp").forward(request, response);
    }
}
