component extends="core.corfield.framework" {
	include "core/config/settings.cfm";
	// APPLICATION SETTINGS
	// DON'T TOUCH IT! USE SETTINGS.CFM UNDER CONFIG TO DO SO
	this.name = variables.settings.global.applicationname;
	this.sessionManagement = true;
	this.sessionTimeout = variables.settings.global.sessionTimeout;
	// ------------------------------------------------------
	
	include "core/config/fw1_settings.cfm";
	
	function setupApplication() {
		application.settings = variables.settings;
	}
	
	function setupSession() {
        controller('security.setSession');
    }
	
	function getEnvironment() {
		var hostname = getHostname();
		
		if(findNocase("local",CGI.SERVER_NAME))
			return "dev";
		else
			return "prod";
	}
	
	function before() {
		rc.starttime = getTickCount();
	}
	
	function setupRequest() {
		controller('security.authorize');
		
		request.context.settings = application.settings;
	}
	
	function setupResponse() {
		var responsetime = getTickCount()-rc.starttime;
		
		writelog("responsetime=#responsetime#","info",true);
	}
	
}