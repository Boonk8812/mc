$uri = "https://api.github.com/repos/actions/runner/releases/latest"
$response = Invoke-RestMethod -Uri $uri -Method Get
$runnerImage = $response.assets | Where-Object { $_.name -like "*win-x64.zip" } | Select-Object -ExpandProperty browser_download_url
$runnerImage
