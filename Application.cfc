<cfcomponent>
    <cfset this.name = "AppSinBD">
    <cffunction name="onApplicationStart">
        <!-- Inicializar lista de usuarios al iniciar la aplicación -->
        <cfset application.usuarios = []>
        <cfreturn true>
    </cffunction>
</cfcomponent>
