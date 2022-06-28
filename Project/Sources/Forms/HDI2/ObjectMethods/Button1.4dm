var $office365 : cs:C1710.NetKit.Office365
var $status : Object
var $mail : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

If (Form:C1466.mail.to#"")
	
	// Creates a provider to send an email in Microsoft format
	$office365:=cs:C1710.NetKit.Office365.new(Form:C1466.oAuth2; New object:C1471("mailType"; "JMAP"))
	
	// Send the email
	$status:=$office365.mail.send(Form:C1466.mail)
	
	If ($status.success)
		ALERT:C41("Email sent")
	Else 
		ALERT:C41("Error: "+$status.statusText)
	End if 
Else 
	ALERT:C41("The reply-To address is emtpy.")
End if 