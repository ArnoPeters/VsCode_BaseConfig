wsl --install

winget install -e --source winget --id Microsoft.PowerShell
winget install -e --source winget --id Microsoft.AzureCLI 

#todo az aks install-cli
# Throws error if cert is not trusted.  
#todo: az bicep install 