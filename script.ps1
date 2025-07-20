# if running first time
#in powershell
#winget install -e --id Microsoft.Bicep

New-AzResourceGroupDeployment -ResourceGroupName lesson02 -TemplateFile main.bicep -Name powershell-deployment