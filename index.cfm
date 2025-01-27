<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aplicación Básica Sin Base de Datos</title>
</head>
<body>
<!---     <h1>Lista de Usuarios</h1>  --->
    

    <!-- Mostrar usuarios -->
    <cfif arrayLen(application.usuarios) eq 0>
        <p>No hay usuarios registrados.</p>
    <cfelse>
        <table border="1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                </tr>
            </thead>
            <tbody>
                <cfloop array="#application.usuarios#" index="usuario">
                    <tr>
                        <td>#arrayFind(application.usuarios, usuario)#</td>
                        <td>#usuario.nombre#</td>
                        <td>#usuario.correo#</td>
                    </tr>
                </cfloop>
            </tbody>
        </table>
    </cfif>

    <!-- Formulario para agregar usuario -->
    <h2>Agregar Usuario</h2>
    <form action="agregarUsuario.cfm" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <br>
        <label for="correo">Correo:</label>
        <input type="email" id="correo" name="correo" required>
        <br>
        <button type="submit">Agregar</button>
    </form>
</body>
</html>
