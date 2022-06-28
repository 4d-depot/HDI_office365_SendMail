//%attributes = {}
// Creates the object that contains all the information for the OAuth2 connection 
#DECLARE : Object

var $param : Object

$param:=New object:C1471()
$param.name:="Microsoft"
$param.permission:="signedIn"
$param.clientId:="7bc55eeb-c546-4ec5-830e-47b15cc9b784"
$param.redirectURI:="http://127.0.0.1:50993/authorize/"
$param.scope:="https://graph.microsoft.com/.default"
// Create new OAuth2 object
return cs:C1710.NetKit.OAuth2Provider.new($param)