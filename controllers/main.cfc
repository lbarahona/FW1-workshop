<cfcomponent>

	<cffunction name="init">
		<cfargument name="fw" type="any" />
		<cfset variables.fw = fw />
		<cfreturn this />
	</cffunction>

	<cffunction name="default" output="false">
		<cfset rc.title = "Home Page" />
	</cffunction>

</cfcomponent>