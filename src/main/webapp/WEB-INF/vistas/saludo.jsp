<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>
        
        <title>Spring MVC</title>
    </head>
    <body>
        <main class="d-flex">
            <section class="p-5">
                <h1>Mi primera app web con Spring MVC</h1>
                <div class="card mt-5 p-4 shadow-sm">
                    <p>Bienvenido Administrador 
                        <span class="text-secondary bg-secondary-subtle rounded-5 p-2 fw-bold">
                            ${mensaje}
                        </span>
                    </p>
                    <div>
                        <a href="login" class="btn btn-secondary fw-bold"><i class="bi bi-box-arrow-left me-2"></i>Regresar al Login</a>
                    </div>
                </div>

            </section>
        </main>

        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    

    </body>
</html>
