param (
    [string[]]$files
)

foreach ($file in $files) {
    if (Test-Path $file) {
        # Actualizar fecha de modificación
        (Get-Item $file).LastWriteTime = Get-Date
    } else {
        # Crear archivo vacío
        New-Item $file -ItemType File
    }
}
