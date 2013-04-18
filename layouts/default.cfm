<cfoutput>
<!DOCTYPE html>
<html lang="en">
	#view('includes/html_head')#
	<body>
	  #view('includes/header')#
	  <div class="container">
	  	<div class="row-fluid">
	  	  #view('includes/message')#
	  	  <div class="span12">
	  	  	#body#
	  	  </div>
	   	</div>
		#view('includes/footer')#
	  </div>
	  #view('includes/scripts')#
	</body>
</html>
</cfoutput>