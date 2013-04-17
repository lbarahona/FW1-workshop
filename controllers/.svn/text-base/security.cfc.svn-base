component {

    public any function init( fw ) {
        variables.fw = fw;
        return this;
    }

    function setSession(rc) {
        session.auth = {};
        session.auth.isLoggedIn = false;
        session.auth.fullname = 'Guest';
    }

    function authorize(rc) {
        if(!structKeyExists(session,'auth'))
            setSession();
		
        if (!session.auth.isLoggedIn &&
            !listfindnocase( 'login', variables.fw.getSection() ) &&
            !listfindnocase( 'main.error', variables.fw.getFullyQualifiedAction()))
        {
			variables.fw.redirect('login');
        }
        
        request.context.auth = session.auth;
    }
}