<cfoutput>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#buildURL('')#">#rc.settings.global.appTitle#</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="##">Home</a></li>
              <li><a href="about">Users</a></li>
            </ul>
            <p class="navbar-text pull-right">
            Logged as <a href="##" class="navbar-link">#rc.auth.fullname#</a> | <a href="#buildURL('login.logout')#" class="navbar-link">Logout</a>
            </p>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
  
</cfoutput>