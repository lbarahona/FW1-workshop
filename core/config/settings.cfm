<cfscript>
	// GLOBAL SETTINGS
	// This settings can be found in 'rc' scope. Ex: rc.settings.global.companyName
	variables.settings = {
		global = {
			applicationname = "manager_fw1_#hash(getCurrentTemplatePath())#",
			appTitle = "My Manager",
			sessionTimeout = createTimespan(0,0,30,0),
			companyName = "My Company",
			theme = "default",
			dsn = "myadmin"
		}
	};
</cfscript>