<cfcomponent>

	<cffunction name="init">
		<cfargument name="fw" type="any" />
		<cfset variables.fw = fw />
		<Cfreturn this />
	</cffunction>

	<cffunction name="default" output="false">
		
		<cfset request.layout = false>
		<cfset rc.title  = "Application Login" />

	</cffunction>

	<cffunction name="startCheck" output="false">
		<cfset variables.fw.service("userService.validateLogin", "qryUserInfo") />
	</cffunction>

	<cffunction name="endCheck" output="false">

		<cfif rc.qryUserInfo.recordCount GT 0>
			<cfset session.auth = structNew() />
			<cfset session.auth.isLoggedIn = true />
			<cfset session.auth.fullname = rc.qryUserInfo.username />
			<cfset variables.fw.redirect('main') />
		<cfelse>
			<cfset rc.msg = "Login Failed, Username or Password are invalid" />
			<cfset rc.msgType = "error" />
			<cfset variables.fw.redirect('login','msg,msgType') />
		</cfif>
		
	</cffunction>

	<cffunction name="logout" output="false">

		<cfset session.auth = structNew() />
		<cfset session.auth.isLoggedIn = false />
		<cfset session.auth.fullname = "Guest" />

		<cfset variables.fw.redirect("main") />
		
	</cffunction>

</cfcomponent>