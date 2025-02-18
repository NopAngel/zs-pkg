param (
    [string]$pattern,
    [string[]]$files
)

foreach ($file in $files) {
    if (Test-Path $file) {
        Select-String -Pattern $pattern -Path $file
    }
}
