# FileSyncer

## Overview

FileSyncer is a simple PowerShell script designed to synchronize files between a source and destination folder. This tool is useful for backups and ensuring that directories are in sync.

## Features

- Synchronizes files from a specified source folder to a destination folder.
- Creates the destination folder if it does not exist.
- Overwrites existing files in the destination if they have changed.
- Provides console feedback during the synchronization process.

## Usage

1. **Clone the Repository**
   ```bash
   git clone https://github.com/zikriacodes/FileSyncer.git
   cd FileSyncer
   ```
2. Edit the Script (Optional) Open `Sync-Files.ps1` and adjust the default source and destination paths if necessary.
3. Run the Script Open PowerShell and navigate to the folder where you cloned the repository. Execute the script with the following command:
   ```powershell
   .\Sync-Files.ps1 -SourcePath "C:\YourSourceFolder" -DestinationPath "C:\YourDestinationFolder"
   ```

# License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
