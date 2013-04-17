<cfscript>
	variables.framework = {
		SESOmitIndex = true
	};
	
	variables.framework.environments = {
		dev = {
			reloadApplicationOnEveryRequest = true
		},
		prod = {
			password = "leeroy"
		}
	};
</cfscript>