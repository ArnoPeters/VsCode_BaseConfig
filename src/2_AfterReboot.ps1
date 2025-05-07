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
gpg --batch --generate-key <<EOF
Key-Type: default
Key-Length: 2048
Subkey-Type: default
Name-Real: $GitUserName
Name-Email: $GitEmail
Expire-Date: 0
%no-protection
EOF

# Extract the GPG key ID
$GpgKeyId = gpg --list-secret-keys --keyid-format LONG $GitEmail | Select-String -Pattern "sec.*\/([A-F0-9]+)" | ForEach-Object { $_.Matches.Groups[1].Value }

# Configure Git to use the GPG key
git config --global user.signingkey $GpgKeyId
git config --global commit.gpgSign true