param(
  [Parameter(Mandatory = $true)]
  [string]$GitUserName,

  [Parameter(Mandatory = $true)]
  [string]$GitEmail
)


# Configure Git user details
git config --global user.name $GitUserName
git config --global user.email $GitEmail

# Generate a GPG key
# Create a temporary file for the GPG batch input
$GpgBatchFile = New-TemporaryFile
@"
Key-Type: default
Key-Length: 2048
Subkey-Type: default
Name-Real: $GitUserName
Name-Email: $GitEmail
Expire-Date: 0
%no-protection
"@ | Set-Content -Path $GpgBatchFile

# Generate a GPG key using the batch file
gpg --batch --generate-key $GpgBatchFile

# Remove the temporary file
Remove-Item -Path $GpgBatchFile -Force

# Extract the GPG key ID
$GpgKeyId = gpg --list-secret-keys --keyid-format LONG $GitEmail | Select-String -Pattern "sec.*\/([A-F0-9]+)" | ForEach-Object { $_.Matches.Groups[1].Value }

# Configure Git to use the GPG key
git config --global user.signingkey $GpgKeyId
git config --global commit.gpgSign true