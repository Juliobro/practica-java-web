<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Formas de insertar código Java en JSP</title>
</head>
<body>
    <h1>Formas de instertar código Java en JSP</h1>
    <ol>
        <li>
            <h2>Expresiones</h2>
            <ul>
                <li><p><b><%= "juan".toUpperCase() %></b></p></li>
                <li><p>La suma 15 + 1 es: <b><%= 15+1 %></b></p></li>
                <li><p>¿12 es mayor que 18? <b><%= 12>18 %></b></p></li>
            </ul>
        </li>
        <li>
            <h2>Scriptlets</h2>
            <ul>
                <%
                    for (int i=0; i<5; i++) {
                        out.print("<li>Scriptlet" + (i+1) + "</li>");
                    }
                %>
            </ul>
        </li>
        <li>
            <h2>Declaraciones</h2>
            <ul>
                <%!
                    public int sumar(int a, int b) {
                        return a + b;
                    }
                %>
                <li>
                    <p>El resultado de la suma declarada es: <%= sumar(10, 8) %></p>
                </li>
            </ul>
        </li>
    </ol>
    <a href="hello-servlet">Ir a "Mi Servlet"</a>
</body>
</html>