<!---message types can be: info, success and error. Default is set to info--->
<cfparam name="rc.msg" default="">
<cfparam name="rc.msgType" default="info">
<cfif len(rc.msg)>
<cfoutput>
	<div class="alert alert-#rc.msgType#">
  		<a href="##" class="close" data-dismiss="alert">&times;</a>
		#rc.msg#
	</div>
</cfoutput>
</cfif>