Param(
    [Parameter(Mandatory)]
    [string]$username
)

$uri = "https://literotica.com/api/3/search/members?params=%7B%22q%22%3A%22$username%22%7D"

$response = Invoke-WebRequest -Uri $uri

$content = $response.Content | ConvertFrom-Json

foreach ($item in $content.data)
{
    if ($item.username -eq $username)
    {
        $userid = $item.userid
        $profileUri = "https://www.literotica.com/stories/memberpage.php?uid=$userid"
        Start-Process $profileUri
        break
    }
}
