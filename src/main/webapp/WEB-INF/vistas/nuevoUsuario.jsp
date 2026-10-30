<%@page import="web.date1910.dto.usuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>

        <title>Nuevo Usuario</title>

    </head>
    <body>
        <main class="d-flex justify-content-center align-items-center vh-100">
            <section class="p-5 rounded-5 shadow bg-white" style="height: auto; width: 400px">

                <%usuarioDTO usuario = (usuarioDTO) request.getAttribute("usuarioBean");%>

                <div class="d-flex">
                    <% if (usuario.getAncla() == null || usuario.getAncla().isEmpty()) { %>
                    <h1>Registrar</h1>
                    <%} else { %>
                    <h1>Editar</h1>
                    <% }%>
                    <a href="listarTareas" class="btn btn-sm btn-close ms-auto d-inline-flex align-items-center justify-content-center" title="Cerrar">
                    </a>
                </div>


                <div class="mt-4">
                    <mvc:form action="usuarioGrabar" modelAttribute="usuarioBean">

                            <mvc:hidden path="ancla"></mvc:hidden> 
                            <div class="form-group mb-4">
                            <mvc:label path="user" class="form-label"><i class="bi bi-person me-2"></i>Usuario</mvc:label>   
                            <mvc:input path="user" class="form-control" cssErrorClass="form-control is-invalid"></mvc:input>   
                            <mvc:errors path="user" cssClass="text-danger"></mvc:errors>  
                            </div>

                            <div class="form-group mb-4">
                            <mvc:label path="password" class="form-label"><i class="bi bi-lock me-2"></i>Password</mvc:label>   
                            <mvc:input path="password" class="form-control" cssErrorClass="form-control is-invalid"></mvc:input>   
                            <mvc:errors path="password" cssClass="text-danger"></mvc:errors>  
                            </div>

                            <div class="form-group mb-4">
                            <mvc:label path="nombre" class="form-label"><i class="bi bi-person-vcard me-2"></i>Nombre</mvc:label>   
                            <mvc:input path="nombre" class="form-control" cssErrorClass="form-control is-invalid"></mvc:input>    
                            <mvc:errors path="nombre"></mvc:errors>   
                            </div>

                            <div class="text-center">
                            <% if (usuario.getAncla() == null || usuario.getAncla().isEmpty()) { %>
                            <input type="submit" value="Añadir" class="btn btn-secondary">
                            <%} else { %>
                            <input type="submit" value="Editar" class="btn btn-secondary">
                            <% }%>
                        </div>
                    </mvc:form>
                </div>
            </section>
        </main>




        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    

    </body>
</html>
