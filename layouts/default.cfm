<cfoutput>
	<!DOCTYPE html>
	<html lang="en">
		<!--- HTML Head --->
		#view('includes/html_head')#

		<body>
			<!--- Site's Header --->
			#view('includes/header')#

			<div class="container">

				<div class="row-fluid">
					<!--- Back-end Messages --->
					#view('includes/message')#

					<div class="span12">
						<!--- View code goes here --->
						#body#
					</div>

				</div>

				<!--- Site's Footer --->
				#view('includes/footer')#

			</div> <!--- /.container --->

			<!--- Le JS --->
	  		#view('includes/scripts')#

		</body>
	</html>
</cfoutput>