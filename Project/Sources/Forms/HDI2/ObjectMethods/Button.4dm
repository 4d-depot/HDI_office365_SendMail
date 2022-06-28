var $office365 : cs:C1710.NetKit.Office365
var $user : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

Form:C1466.oAuth2:=SignedInProvider

//Form.oAuth2.getToken()

// Inits the office365 object
$office365:=cs:C1710.NetKit.Office365.new(Form:C1466.oAuth2; New object:C1471("mailType"; "JMAP"))

// Gets the current user information
$user:=$office365.user.getCurrent()

If ($user#Null:C1517)
	EnableObjects(True:C214)
	Form:C1466.mail.from:=$user.userPrincipalName
	Form:C1466.mail.sender:=$user.userPrincipalName
Else 
	EnableObjects(False:C215)
	Form:C1466.mail.from:=""
	Form:C1466.mail.sender:=""
End if 

