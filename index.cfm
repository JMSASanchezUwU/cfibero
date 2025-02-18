<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aplicación Básica Sin Base de Datos</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        h1, h2 {
            text-align: center;
            margin-top: 20px;
            color: #343a40;
        }
        table {
            margin: 20px auto;
            width: 80%;
            border-collapse: collapse;
        }
        table th, table td {
            text-align: center;
            padding: 10px;
        }
        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            background-color: #fff;
        }
        button {
            display: block;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Lista de Usuarios</h1>
        <h1>Cambio con backup</h1>
        

        <!-- Mostrar usuarios -->
        <cfif arrayLen(application.usuarios) eq 0>
            <p class="text-center text-danger">No hay usuarios registrados.</p>
        <cfelse>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                    </tr>
                </thead>
                <tbody>
                <cfoutput>
                    <cfloop array="#application.usuarios#" index="usuario">
                        <tr>
                            <td>#arrayFind(application.usuarios, usuario)#</td>
                            <td>#usuario.nombre#</td>
                            <td>#usuario.correo#</td>
                        </tr>
                    </cfloop>
                </cfoutput>
                </tbody>
            </table>
        </cfif>

        <!-- Formulario para agregar usuario -->
        <h2>Agregar Usuario</h2>
        <form action="agregarUsuario.cfm" method="post">
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" id="nombre" name="nombre" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="correo" class="form-label">Correo:</label>
                <input type="email" id="correo" name="correo" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary">Agregar</button>
        </form>
    </div>

    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
