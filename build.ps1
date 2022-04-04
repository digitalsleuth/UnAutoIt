$m_GOOS = $env:GOOS
$m_GOARCH = $env:GOARCH

Write-Host "Building for Windows AMD64"
$env:GOOS = "windows"
$env:GOARCH = "amd64"
go build -o .\build\UnAutoIt-windows-amd64.exe

Write-Host "Building for Windows i686"
$env:GOOS = "windows"
$env:GOARCH = "386"
go build -o .\build\UnAutoIt-windows-i686.exe

Write-Host "Building for Linux AMD64"
$env:GOOS = "linux"
$env:GOARCH = "amd64"
go build -o .\build\UnAutoIt-linux-amd64.bin

Write-Host "Building for Linux i686"
$env:GOOS = "linux"
$env:GOARCH = "386"
go build -o .\build\UnAutoIt-linux-i686.bin

$env:GOOS = $m_GOOS
$env:GOARCH = $m_GOARCH