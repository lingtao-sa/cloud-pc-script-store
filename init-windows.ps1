# Enable Choco - The preferred way to managed the software packages
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Enable RSAT: Remote Access Management Tools and RSAT: Remote Desktop Services Tools (optional)
# (Notes: Those are required to enable Remote audio for MS Teams)
Add-WindowsCapability -Online -Name Rsat.RemoteAccess.Management.Tools~~~~0.0.1.0
Add-WindowsCapability -Online -Name Rsat.RemoteDesktop.Services.Tools~~~~0.0.1.0

# Enable Windows Subsystem for Linux (optional)
# (Notes: It is required for the Docker Desktop)
wsl --install

# Auto run Windows Update
# Get-WindowsUpdate -AcceptAll -Install -AutoReboot
