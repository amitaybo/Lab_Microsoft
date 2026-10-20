# Lab_Microsoft

instructions:

1.open folder 1.Deploy_DC _Servers- The folder contains the instructions

2.open folder 2.OU&Create_Users- The folder contains the instructions

3.open folder 3.Monitor- The folder contains the instructions

TNX,
Amitay Bar-Osher

$baseUrl = "https://YOUR-CCP/AIMWebService/api/Accounts"

$appID = "YOUR-APP-ID"
$safe = "Credential-Providers"

$url = "${baseUrl}?AppID=$appID&Safe=$safe"

try {
    $response = Invoke-RestMethod -Uri $url -Method GET -ErrorAction Stop

    Write-Host "Request successful" -ForegroundColor Green
    Write-Host "Returned account:" $response.UserName
}
catch {
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host $_.ErrorDetails.Message -ForegroundColor Yellow
}
