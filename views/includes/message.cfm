<cfparam name="rc.msg" default="">
<cfif len(rc.msg)>
  <div class="alert">
  <cfoutput>#rc.msg#</cfoutput>
  </div>
</cfif>