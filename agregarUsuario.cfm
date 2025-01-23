<cfparam name="nombre" default="">
<cfparam name="correo" default="">

<!-- Validar entrada -->
<cfif trim(nombre) neq "" and trim(correo) neq "">
    <!-- Agregar usuario a la lista -->
    <cfset nuevoUsuario = {nombre = nombre, correo = correo}>
    <cfset arrayAppend(application.usuarios, nuevoUsuario)>
</cfif>

<!-- Redirigir al index -->
<cflocation url="index.cfm">
