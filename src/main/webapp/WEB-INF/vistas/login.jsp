<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>

        <title>Login</title>
    </head>
    <body>
        <main class="d-flex justify-content-center align-items-center vh-100">
            <section class="p-5 rounded-5 shadow bg-white" style="height: 350px; width: 400px">
                <h1 class="text-center">Login</h1>
                <div class="mt-3">
                    <form action="loginAccion" method="post">
                        <div class="form-group mb-4">
                            <label class="mb-2"><i class="bi bi-person"></i>Usuario:</label>
                            <input class="form-control" type="text" name="user"/>
                        </div>

                        <div class="form-group mb-4">
                            <label class="mb-2"><i class="bi bi-lock"></i>Contraseña</label>
                            <input class="form-control" type="text" name="password"/>
                        </div>
                        <div class="text-center">
                            <input class="btn btn-secondary" type="submit" value="Ingresar"/>
                        </div>
                    </form>
                </div>
            </section>
        </main>

        <% if (request.getAttribute("mensaje") != null) {%>
        <script>
            alert(" <%= request.getAttribute("mensaje")%>");
        </script>
        <% }%>
        
        
       

        
        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    

    </body>
</html>
