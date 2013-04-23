<cfcomponent name="userService">

	<cffunction name="validateLogin" access="public" returntype="query">
		<cfargument name="username" require="true" type="string" />
		<cfargument name="password" require="true" type="string" />

		<cfquery name="qryCheckUser" datasource="#application.settings.global.dsn#">

			SELECT *
			FROM users
			WHERE username = '#ARGUMENTS.username#'
			AND password = '#ARGUMENTS.password#'
			
		</cfquery>
		
		<cfreturn qryCheckUser />
	</cffunction>

</cfcomponent>