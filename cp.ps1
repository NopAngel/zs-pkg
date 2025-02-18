param (
    [string]$source,
    [string]$destination
)

Copy-Item -Path $source -Destination $destination -Recurse -Force
