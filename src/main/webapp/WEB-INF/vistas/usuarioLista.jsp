<%@page import="cibertec.capitulo3_base.dto.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>

        <title>Mantenimiento Usuarios</title>
    </head>
    <body>
        <main class="row">
            <section class="p-5">
                <div class="container bg-white p-4 rounded-5 shadow">
                    <div class="d-flex">
                        <h1 class="m-0">Lista de Usuarios</h1>
                        <a href="crearUsuario" class="btn btn-outline-secondary ms-auto d-inline-flex align-items-center justify-content-center p-2" title="Insertar Usuario">Insertar Usuario</a>
                    </div>

                    <% List<User> miLista = (List<User>) request.getAttribute("lista");%>

                    <table class="table table-hover mt-4">
                        <thead>
                            <tr>
                                <th>Usuario</th>
                                <th>Contraseña</th>
                                <th>Nombre Completo</th>
                                <th class="text-center">Eliminar</th>
                                <th class="text-center">Editar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (User u : miLista) {%>
                            <tr>
                                <td><%=u.getUser()%></td>
                                <td>*********</td>
                                <td><%=u.getNombre()%></td>
                               
                                <td class="text-center">
                                    <a href="eliminarUsuario?usuario=<%=u.getNombre()%>" class="btn btn-outline-danger ms-4 rounded-circle" title="Eliminar"><i class="bi bi-trash"></i></a>
                                </td>
                                <td class="text-center">
                                    <a href="encontrarUsuario?buscar=<%=u.getNombre()%>" class="btn btn-outline-primary ms-4 rounded-circle text-center" title="Editar"><i class="bi bi-pencil"></i></a>
                                </td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>

                </div>
            </section>
        </main>


        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    
    </body>
</html>
