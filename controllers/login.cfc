component {
	function init( fw ) {
		variables.fw = fw;
		return this;
	}
	
	function check(rc) {
        if(rc.username == rc.settings.global.username &&
           rc.password == rc.settings.global.password) {
			session.auth = {};
			session.auth.isLoggedIn = true;
			session.auth.fullname = 'Administrator';
						
			variables.fw.redirect('main');
        }
        
        rc.msg = "Login Failed, Username or Password are invalid";
        writelog("Login Failed | username=#rc.username#","info",false,"auth");
    }

	function endCheck() {
		variables.fw.redirect('login','msg');
	}

    function logout(rc) {
        session.auth = {};
        session.auth.isLoggedIn = false;
        session.auth.fullname = 'Guest';
		
        variables.fw.redirect('main');
    }
}