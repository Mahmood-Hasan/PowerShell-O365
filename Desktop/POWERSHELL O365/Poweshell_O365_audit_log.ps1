#this script allows you audit log access for O365 

$UserCredential=Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication  Basic -AllowRedirection
Import-PSSession $Session
Get-Mailbox
Get-ManagementRole
Get-ManagementRoleAssignment
Search-UnifiedAuditLog -StartDate "4/18/2018 10:00 AM" -EndDate "4/18/2018 5:00 PM" 






