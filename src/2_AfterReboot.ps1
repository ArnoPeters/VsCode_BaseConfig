param(
  [Parameter(Mandatory = $true)]
  [string]$GitUserName,

  [Parameter(Mandatory = $true)]
  [string]$GitEmail
)

git config --global user.name $GitUsername
git config --global user.email $GitEmail

