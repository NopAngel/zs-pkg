param (
    [string]$source,
    [string]$destination
)

Move-Item -Path $source -Destination $destination -Force
