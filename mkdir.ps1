param (
    [string]$path
)

if (-not (Test-Path $path)) {
    New-Item -ItemType Directory -Path $path -Force
}
