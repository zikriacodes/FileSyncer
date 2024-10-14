# Sync-Files.ps1
param (
    [string]$SourcePath = "C:\SourceFolder",
    [string]$DestinationPath = "C:\DestinationFolder"
)

# Function to synchronize files
function Sync-Files {
    param (
        [string]$source,
        [string]$destination
    )

    # Check if the source and destination paths exist
    if (!(Test-Path -Path $source)) {
        Write-Host "Source path does not exist: $source" -ForegroundColor Red
        return
    }

    if (!(Test-Path -Path $destination)) {
        Write-Host "Destination path does not exist. Creating: $destination" -ForegroundColor Yellow
        New-Item -Path $destination -ItemType Directory
    }

    # Copy files from source to destination, only if they have changed
    Copy-Item -Path "$source\*" -Destination $destination -Recurse -Force -ErrorAction Stop

    Write-Host "Files synced from $source to $destination" -ForegroundColor Green
}

# Execute the synchronization
Sync-Files -source $SourcePath -destination $DestinationPath
