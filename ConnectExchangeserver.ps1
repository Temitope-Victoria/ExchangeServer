Set-ExecutionPolicy RemoteSigned 

$UserCredential = Get-Credential 

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://<ServerFQDN>/PowerShell/ -Authentication Kerberos -Credential $UserCredential 

To get the FQDN of the Exchange Server, run this command on Exchange Management Shell: 

$o = Get-MailboxServer ([System.Net.Dns]::GetHostByName($o)).HostName 

After getting the FQDN, replaced it with http://<ServerFQDN>/PowerShell/, and successfully connected.

