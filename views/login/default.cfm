<cfset request.layout = false>
<cfset rc.title  = "Application Login" />
<cfoutput>
<!doctype html>
<html>
  #view("includes/html_head")#
  <body class="login">
	<div class="container">
      <form class="form-signin" method="post" action="#buildURL('login.check')#">
        <h2 class="form-signin-heading">Please sign in</h2>
		#view("includes/message")#
        <input type="text" class="input-block-level" placeholder="Username" name="username">
        <input type="password" class="input-block-level" placeholder="Password" name="password">
        <!---<label class="checkbox">
          <input type="checkbox" name="keeploggedin" value="1">Keep me logged in
        </label>--->
        <button class="btn btn-large btn-primary" type="submit" name="submit">Login</button>
      </form>
    </div>
  </body>
</html>
</cfoutput>