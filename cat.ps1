param (
    [string[]]$files
)

foreach ($file in $files) {
    if (Test-Path $file) {
        Get-Content $file
    }
}
