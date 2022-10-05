<%-- 
    Document   : SalidaSeminarios
    Created on : 24 sept. 2022, 21:36:37
    Author     : CJ
--%>
<%@page import="com.emergentes.InscripcionSeminarios" %>
<%
    InscripcionSeminarios inscripcionSeminarios = (InscripcionSeminarios)request.getAttribute("inscripcionSeminario");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro de Inscripcion de Seminarios</title>
</head>
<body>
    <h1>Datos recibidos en la Inscripcion de los Seminarios</h1><br>
    <h2>El nombre es: <%=inscripcionSeminarios.getNombre() %> </h2><br>
    <h2>Los apellidos son: <%=inscripcionSeminarios.getApellidos() %> </h2><br>
    <h2>La fecha de inscripción es: <%=inscripcionSeminarios.getFecha() %> </h2><br>
    <h2>Los seminarios a los que se inscribió son: </h2>
    <ul>
        <%
            for(String seminario: inscripcionSeminarios.getSeminarios()){
        %>
        <li><%=seminario%></li>
        <%
            }
        %>
    </ul>
    <%
        if(inscripcionSeminarios.getTurno().equals("maniana")){
    %>
        <h2>El turno escogido es: Mañana </h2><br>
    <%
        }else{
    %>  
        <h2>El turno escogido es: <%=inscripcionSeminarios.getTurno() %> </h2><br>
    <%
        }
    %>
    <a href="index.jsp">Volver a la página de inicio</a>
</body>
</html>
