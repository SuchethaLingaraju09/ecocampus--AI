# ==============================================================================
# EcoCampus AI - Zero-Dependency Local Web Server (PowerShell)
# DSU Code Clash 2.0: AI-Powered Sustainable Campus
# ==============================================================================

param(
    [int]$Port = 5173,
    [switch]$NoBrowser
)

$HostName = "localhost"
$Prefix = "http://${HostName}:${Port}/"
$DocRoot = $PSScriptRoot

$MimeTypes = @{
    ".html" = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".svg"  = "image/svg+xml"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".webp" = "image/webp"
    ".ico"  = "image/x-icon"
    ".csv"  = "text/csv; charset=utf-8"
    ".txt"  = "text/plain; charset=utf-8"
}

$Listener = New-Object System.Net.HttpListener
try {
    $Listener.Prefixes.Add($Prefix)
    $Listener.Start()
} catch {
    Write-Warning "Port $Port is in use or requires elevation. Trying port 8080..."
    $Port = 8080
    $Prefix = "http://${HostName}:${Port}/"
    $Listener = New-Object System.Net.HttpListener
    $Listener.Prefixes.Add($Prefix)
    $Listener.Start()
}

Write-Host "==========================================================" -ForegroundColor Green
Write-Host "  🌱 EcoCampus AI - Sustainability Command Center" -ForegroundColor Green
Write-Host "  DSU Code Clash 2.0 (AI-Powered Sustainable Campus)" -ForegroundColor White
Write-Host "==========================================================" -ForegroundColor Green
Write-Host "  Status:    Server is RUNNING" -ForegroundColor Cyan
Write-Host "  Local URL: $Prefix" -ForegroundColor Yellow
Write-Host "  Doc Root:  $DocRoot" -ForegroundColor Gray
Write-Host "  Press Ctrl+C in this terminal window to STOP the server." -ForegroundColor Yellow
Write-Host "==========================================================" -ForegroundColor Green

if (-not $NoBrowser) {
    Start-Process $Prefix
}

try {
    while ($Listener.IsListening) {
        $Context = $Listener.GetContext()
        $Request = $Context.Request
        $Response = $Context.Response

        $UrlPath = $Request.Url.LocalPath
        if ($UrlPath -eq "/" -or [string]::IsNullOrWhiteSpace($UrlPath)) {
            $UrlPath = "/index.html"
        }

        # Normalize relative path and remove leading slash
        $RelativePath = $UrlPath.TrimStart('/').Replace('/', [System.IO.Path]::DirectorySeparatorChar)
        $FilePath = [System.IO.Path]::Combine($DocRoot, $RelativePath)

        if ([System.IO.File]::Exists($FilePath)) {
            $Extension = [System.IO.Path]::GetExtension($FilePath).ToLowerInvariant()
            $ContentType = $MimeTypes[$Extension]
            if (-not $ContentType) {
                $ContentType = "application/octet-stream"
            }

            $Response.ContentType = $ContentType
            $Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate")
            $Response.StatusCode = 200

            try {
                $Bytes = [System.IO.File]::ReadAllBytes($FilePath)
                $Response.ContentLength64 = $Bytes.Length
                $Response.OutputStream.Write($Bytes, 0, $Bytes.Length)
            } catch {
                $Response.StatusCode = 500
            }
        } else {
            $Response.StatusCode = 404
            $NotFoundMsg = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found: $UrlPath")
            $Response.OutputStream.Write($NotFoundMsg, 0, $NotFoundMsg.Length)
        }

        try { $Response.OutputStream.Close() } catch {}
    }
} finally {
    $Listener.Stop()
    $Listener.Close()
    Write-Host "`nServer stopped gracefully." -ForegroundColor Yellow
}
