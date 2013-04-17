<cfoutput>
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="#buildURL('')#">#rc.settings.global.appTitle#</a>
      <div class="nav-collapse collapse">
        <p class="navbar-text pull-right">
          Logged in as <a href="##" class="navbar-link">#rc.auth.fullname#</a> | <a href="#buildURL('login.logout')#" class="navbar-link">Logout</a>
        </p>
        <ul class="nav">
          <li class="active"><a href="##">Home</a></li>
          <li><a href="##">About</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
</cfoutput>