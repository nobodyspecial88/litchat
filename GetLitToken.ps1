Param(
    [Parameter(Mandatory)]
    [string]$username,
    [Parameter(Mandatory)]
    [string]$password
)

$timestamp = [DateTimeOffset]::Now.ToUnixTimeSeconds()

Start-Sleep -Seconds 1

$body_json = @{
    login = $username
    password = $password
} | ConvertTo-Json

$WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession

$response = Invoke-RestMethod -Uri https://auth.literotica.com/login -Method Post -Body $body_json -ContentType "application/json" -WebSession $WebSession

$headers = ${
    Referer = "https://chat.literotica.com/"
}

$uri = "https://auth.literotica.com/check?timestamp=$timestamp"

Start-Sleep -Seconds 1

$authResponse = Invoke-WebRequest -Uri $uri -Headers $headers -WebSession $WebSession

$authResponse.Content
