<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Usuarios</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            font-size: 2.5em;
            color: #007BFF;
            margin-bottom: 20px;
        }
        .container {
            text-align: center;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div>
        
    <h1>Lista de Usuarios</h1> 
    

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
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <br>
        <label for="correo">Correo:</label>
        <input type="email" id="correo" name="correo" required>
        <br>
        <button type="submit">Agregar</button>
    </form>
    </div>
</body>
</html>
