$creds = Get-Credential
$userName = $creds.UserName
$pass = $creds.Password | ConvertFrom-SecureString

$creds = New-Object System.Management.Automation.PSCredential -ArgumentList $userName, $pass
# $appCreation = Read-Host -Prompt "Do you want to create a new App ?(y/n)"
# if ($appCreation -contains "y") {
#     Login-AzureRmAccount -Credential $creds
#     $AppName = Read-Host -Prompt "Enter the App Name: "
#     $ReplyUrl = Read-Host -Prompt "Enter the Reply URL: "
#     $app = New-AzureADApplication -DisplayName $AppName  -IdentifierUris $ReplyUrl
#     $key = $app | New-AzureADApplicationKeyCredential
# }


$tenant = Read-Host -Prompt "Enter the Tenant Id: "
$clientId = Read-Host -Prompt "Enter the Client Id: "
$clientSecret = Read-Host -Prompt "Enter the Client Secret: "


$Creds = @{
    UserName = $userName
    Password = $pass
    Tenant = $tenant
    ClientId = $clientId
    ClientSecret = $clientSecret
}

$Creds | Export-Clixml creds.xml





